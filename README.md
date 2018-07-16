# Connect Forecasting Demo

## Objective

This script guides a presenter through a quick demo of 5 major features of RStudio Connect. The script has the following objectives:

1. Demonstrate the 5 simplest use cases for RStudio Connect
2. Illustrate some of the advantages of using RMarkdown and R compared with products such as Tableau
3. Demonstrate how RMarkdown and R help solve an ultra-simple business problem that should require little explanation: sales forecasting
4. Perform all these tasks in such a way that a non-technical business person can understand RStudio Connects value within about 10 minutes.
5. Although I'm using a script to guide people through the 5 artifacts that make up this demo, there's no real need to follow it word for word. 

## Demo Script	
Hi everyone. My name is Carl Howe and my show and tell is "How to demonstrate the major functions of RStudio Connect in 5 Minutes." The audience for this show and tell is a business user, not an R programmer or data scientist. If you think this quick demo is too simple, then it's probably just about right for an executive audience (sorry Tareef).

I want to begin by defining what RStudio Connect is.
  
RStudio Connect is a software platform for sharing data science. Many data scientists struggle to share their analyses and models with business people in their companies. RStudio Connect allows them to share their models, apps, and results with others with a single click. Unlike other data science platforms such as SAS or Tableau, RStudio Connect is open and extensible to other languages and platforms.

I'm going to use a scenario that demonstrates 5 functions of RStudio Connect: 

1. results sharing, 
2. parameterization, 
3. scheduling, 
4. app hosting, and 
5. publishing.

	But I'm getting ahead of myself. What I really want to do is to tell you the story of Data Scientist Dave, who works for Vice President Virginia. They work for a company called Digicomputronimatics that makes three kind of widgets:
  
* Basic
* Master
* KillDozer.

### Document 1: Results Sharing (01-mvd-forecast.Rmd)
VP Virginia is concerned about the sales downturn in total widget sales over the past few months, despite being up year over year. She asks data scientist Dave to do a forecast for the rest of 2018 from her Excel spreadsheet.

Dave pulls the data into R and fits a model that can accommodate both trending and seasonality (it's called a Holt Winters model for those interested in the technical details). Dave then generates a forecast using that model, graphs the results, and publishes the document on RStudio Connect for Virginia so that the document can be shared with others. He notes that sales don't appear to be recovering, but there's some hope coming in Q1 2019.

#### Takeaways
The takeaways from this simple forecast are:

* Dave can easily create and visualize a forecast from existing Excel data using R, which is not a simple thing to do in competing tools like Excel or Tableau.
* Dave can share the results of his analysis on RStudio Connect by pushing a single Publish button. No screenshotting or copying and pasting of results is needed to get his results to Virginia.


### Document 2: Parameterized Forecasts and Scheduling (02-mvd-parameterized-forecast.Rmd, 02-mvd-basic-forecast.Rmd, 02-mvd-master-forecast.Rmd, 02-mvd-killdozer-forecast.Rmd)

VP Virginia asks Dave to create similar forecasts for each of the 3 widget products.

Dave adds parameters to his model in R Markdown document for both the product and for the length of the forecast. He then publishes those parameterized forecasts for the three different products as well as for the full forecast, and schedules them to be emailed to the product managers each month.

#### Takeaways
The takeaways from these parameterized forecasts are:

* Dave can encapsulate his models in RMarkdown so that others who don't know R can customize them.
* Dave can schedule these models to be run on a regular basis without knowing anything about server scheduling or scripts. 
* Dave's model results can be automatically emailed to business users on a schedule, regardless of whether Dave is online or not.

Again, this is not easy to do with competing products such as Tableau.

### Document 3: Shiny On-Demand Forecast (03-mvd-shiny-forecast)
Virginia now would like members of her staff to have access to the forecasts Dave has created on demand.
  
Dave creates a new Shiny app that uses his forecast logic, but allows them to select the product being forecasted and length of forecast. He publishes this app to RStudio Connect using a similar single button to the way that he published his initial forecast, but instead of it publishing a document, it publishes a live application that runs in a duplicate of Dave's forecasting environment.

#### Takeaways
The takeaways from the Shiny app forecast are:

* Members of Virginia's staff have access to Dave's models whenever they need it, regardless of whether Dave is around or not.
* Business leaders can control the length of forecast and the product being forecasted.
* Despite using R, business users are shielded from the language. All they see is a simple application they can use.

### Document 4: Forecasting API (TBD)
Virginia now wants her product managers to be able to pull Dave's forecast into their spreadsheets directly.

Dave creates a simple Web API that encapsulates his forecasting model that allows anyone with the proper Web URL to pull the data from his forecast directly. Each product manager can use their own URL for pulling their product information, forecast, and desired forecast length.

#### Takeaways
The takeaways from this API are:

* The knowledge that Dave created in his model can now be used by other business people in the company without them knowing R. All they need to know is their URL.
* Dave's forecast is now hosted by RStudio Connect, allowing him to move onto other projects without being involved in this project further.
* The output of Dave's model can be easily integrated into other business tools such as Excel spreadsheets.


### Document 5: Automated PowerPoint Forecast
Virginia now has to present these monthly forecasts to the CEO in a PowerPoint presentation. Instead of just copying and pasting the information into a PowerPoint deck, Dave changes the R Markdown codea around his forecast so that it creates PowerPoint slides for Virginia directly.

#### Takeaways
Automated PowerPoint generation helps the business move forward because:

* The automated PowerPoint slides don't create resolution or aspect ratio issues that might arise from copy and pasting images.
* The PowerPoint generated always has the latest version of the forecast and data.
* PowerPoint generation can be scheduled to automatically run for Virginia the day before her meeting with the CEO every month.
* Dave no longer has to be directly involved in this forecasting workflow, freeing him up to work on other business projects.

