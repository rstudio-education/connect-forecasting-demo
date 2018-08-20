#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(tidyverse)
library(lubridate)
library(tibbletime)
library(forecast)
library(tidyquant)
library(timetk)
library(sweep)
library(plumber)
library(jsonlite)

format_html <- function(df) {
  header <- paste0("<html><table><tr><td>", paste(names(df), collapse="</td><td>"), "</td></tr>")
  footer <- "</table></html>"
  table_elements <- df %>% 
    transmute(tout = paste("<tr><td>", 
                           pmap_chr(., paste, sep="</td><td>"), 
                           "</td></tr>"))
  table_string <- str_c(table_elements$tout, sep="", collapse="")
  return(str_c(header, table_string, footer, sep="", collapse=""))
  }

#* @apiTitle Widget Forecast

#* Return a forecast for one of the widget products
#* @param series Product name (Basic, Killdozer, Master, All)
#* @param forecast_duration Forecast duration (numeric between 3 and 15)
#* @get /forecast
#* @html

out <- function(series = "All", forecast_duration = 9) {
  
  # load data in 'global' chunk so it can be shared by all users of the dashboard
  monthly_widget_sales <- read_csv("/tmp/mvd-data/widget_sales_monthly.csv") # Read in the data
  monthly_widget_sales_gathered <- gather(monthly_widget_sales, key='product', value="sales", 
                                          widget_basic_sales, 
                                          widget_killdozer_sales, 
                                          widget_master_sales, total_sales) %>%
    arrange(date) # Gather all the product info into a single column arranged 
  ## Now gather all the data for each product into its own row, with the sales becoming
  ## a sub-tibble called 'data.tbl'
  
  monthly_widget_sales_nested <- monthly_widget_sales_gathered %>%
    group_by(product) %>%
    nest(.key = "data.tbl")
  
  product_codes = data.frame('product_selection' = c("Basic", "Killdozer", "Master", "All"),
                             'product_name' = c("widget_basic_sales",
                                                "widget_killdozer_sales", 
                                                "widget_master_sales", 
                                                "total_sales"))
  
  product_id_rows <- product_codes %>% filter(product_selection == series)
  product_name <- as.character(product_id_rows[1,"product_name"])     # Use first result if multiple results returned
  monthly_widget_sales_ts <- monthly_widget_sales_nested %>%
    mutate(data.ts = map(.x = data.tbl,
                         .f = tk_ts,        # this function creates the time series
                         start= 2016,
                         freq = 12))
  
  monthly_sales_models <- monthly_widget_sales_ts %>%
    mutate(fit.model = map(data.ts, HoltWinters))     # apply ets function and put output in data.ts column
  
  monthly_sales_forecasts <- monthly_sales_models %>%
    mutate(fcast = map(fit.model, forecast, h=forecast_duration)) # apply forecast for 12 months
  
  ## Final steps: unnest the forecasts for each product into tidy form and then plot results
  monthly_sales_forecasts_tidy <- monthly_sales_forecasts %>%
    mutate(sweep = map(fcast, sw_sweep, fitted = FALSE, timetk_idx = TRUE)) %>%
    unnest(sweep)
  
  monthly_sales_forecasts_filtered <- monthly_sales_forecasts_tidy %>% dplyr::filter(product == product_name)
  table_output <- monthly_sales_forecasts_filtered %>% 
    mutate(textdate = as.character(as.yearmon(index)),
           rounded_sales = round(sales, digits=0)) %>%
    select(textdate, rounded_sales)
  names(table_output) <- c("Date", "Sales")
  result <- format_html(table_output)
  result
}

