# Connect Forecasting Demo

## Objective

This script guides a presenter through a quick demo of 5 major features of RStudio Connect. The script has the following objectives:

1. Demonstrate the 5 simplest use cases for RStudio Connect
2. Illustrate some of the advantages of using RMarkdown and R compared with products such as Tableau
3. Demonstrate how RMarkdown and R help solve an ultra-simple business problem that should require little explanation: sales forecasting
4. Perform all these tasks in such a way that a non-technical business person can understand RStudio Connects value within about 10 minutes.
5. Although I'm using a script to guide people through the 5 artifacts that make up this demo, there's no real need to follow it word for word. 

## Demo Script	

### Title Slide: Introducing RStudio Connect

Hi everyone. My name is *Your name goes here* and I'd like to introduce you to RStudio Connect.

The audience for this show and tell is a business user, not an R programmer or data scientist. We hope it will show you how Connect will help your business get more out of the data science your company does.

I'm going to start with a few words from Joseph Priestly. Now if you don't recognize the name, that's OK; he's not currently running for office or anything.

### Slide 2: Joseph Priestly Quote

Joseph Priestly is actually the discoverer of oxygen. He lived from 1733 to 1804. And he said

> "The more elaborate our means of communication, the less we communicate."

I'd add on one more sentence to that to update it for today.

### Slide 3: Data Scientists Aren't Exempt

>“Data Scientists are not exempt from this rule.”

Data science certainly seems like an elaborate form of communication for most of us, which means most organizations have difficulty putting it to work.

The news is that RStudio Connect can help

### Slide 4: RStudio Connect Definition

> RStudio Connect is a publishing platform that makes sharing data science simple.

### Slide 5: RStudio Connect Bridges The Gap

By making sharing data science easier, RStudio Connect bridges the gap between your data scientists and the business.

### Slide 6: 5 Features of Connect

I'm going to demonstrate how RStudio Connect bridges this gap in 5 ways. I'll demonstrate how RStudio Connect simplifies:

1. Results sharing
2. Custom reports with scheduling and email
3. Dynamic analytics and dashboards
4. Application Programming Interfaces (API)
5. Slide publishing

Before we get into these capabilities, I first want to set up a business scenario.

### Slide 7: Our Business Scenario

I'm going to tell you the story of 

1. Data Scientist Dave ►, who works for 
2. Vice President Virginia ►. They work for a company called Digicomputronimatics that makes 
3. widgets ►.

_Run the setup script link shown at the bottom of this slide to generate the data for the rest of this demo_

### Slide 8: Our Widgets

The widgets come in three types:
  
* Basic  ►
* Master  ►
* Killdozer ►


Our goal is to better understand the product mix and prospects for the company's widget business.
 
### Act 1: Virginia Asks For A Forecast (01-mvd-forecast.Rmd)

VP Virginia is concerned about the sales downturn in total widget sales over the past few months, despite being up year over year. She asks data scientist Dave to do a forecast for the rest of 2018 from her Excel spreadsheet.

### Act 1: Getting Started

This code screen shot isn't going to make much sense to the business user, but trust us, this is a place your data scientist lives. 

Dave starts on his desktop using the RStudio R development environment. This could be the free and open source RStudio version or it could be the RStudio Pro version; it doesn't matter which Dave uses. Both work equally well with RStudio Connect.

### Act 1: Results Sharing

* Dave creates an analysis that uses Virginia's Excel data as input
* The analysis uses R Markdown, a system that combines text, R code, and R results into a single unified document
* Dave clicks one button to publish it to Virginia as a Web page

### Act 1: Published Document

Here's a screenshot of the final forecast for all widgets showing a dip at the end of the year and then a bounce as we get into 2019.

If you want to see the complete document, click the ink shown at the bottom of this slide to see the live analysis output on RStudio Connect.

#### Act 1: Takeaways
The takeaways from this simple forecast are:

* The Breadth and power of R. ► This forecast is only about a page of R code, including data ingestion, modeling and graphics.
* Simple document creation. ► This analysis not only has a model and its output, but text explaining what it means, which is critical for business people who want to understand it.
* One-button publishing. ► The data scientist published this analysis to the web with a single click.

So now we have a forecast for all widgets, but we really need more information to understand the product mix.


### Act 2: On-Demand Custom Reports With Scheduling and Email

VP Virginia now asks Dave ► if he can customize these forecasts for each product and send each product manager their appropriate forecast.

Many people would simply create three different reports to satisfy this request. However, R Markdown offers a more sustainable solution: parameterized custom reports.

### Act 2: Report Customization
Dave adds customization parameters to his R Markdown document that allow the user to specify the product and the length of the forecast. ► The rest of his code remains the same.

Dave then publishes his document to RStudio Connect using the Publish button, and we see the forecast for Basic widgets over 9 months as specified by the parameters. ►
However, now the published document has a tab labeled "INPUT" ►

When Dave clicks on this INPUT tab, he has an opportunity to change the forecast.

### Act 2: Changing Report Parameters
After clicking on the INPUT tab, Connect displays a PARAMETERS sidebar. ► On that sidebar, we can change the product to be forecast to Master. Once that change is made, we can run the forecast again and see that Master Widgets sales are perhaps one of the reasons that widget sales overall are sluggish.

Now remember that VP Virginia asked that Dave email these reports to each of the product managers every month. Fortunately, Connect provides an option to do just that.

### Act 2: Emailing Scheduled Reports

By clicking on the Schedule button next to the document, ► Dave can request that this report be run monthly on the first day of each month.

In addition, ► Dave can instruct Connect to email the report to email the resulting report to users granted access to the document.

So once Dave has published his parameterized report on Connect, he can schedule and email a report every month to each product manager with just a couple of clicks. And best of all, he no longer has to be involved in this process; he has made his analysis a stand-alone product for his business users.

#### Act 2: Custom Report Takeaways
The takeaways from these customized analytical forecasts are:

* Analyses can easily be turned into customize-able reports using R Markdown
* Reports can be scheduled to run and email the results automatically
* Report authors don't have to be involved in ongoing report generation

Just as a thought experiment, how would you perform this same task -- automating three analyses to run every month and email the results to a set of business users -- with a GUI product like SAS or Tableau? Using a scripting system like R combined with RStudio Connect makes this all possible with just a few clicks.


### Act 3: Dynamic Analytics
Virginia now would like dynamic forecasts on demand so that others on the business side of the company can plan out production.

### Act 3: Shiny Brings Analytics To Life
  
Dave creates a new Shiny app that uses his forecast logic, but changes the header to use the Shiny runtime. He also adds a new section to his document that allows users to select the product being forecasted and length of forecast. ►

Dave publishes this app to RStudio Connect using a similar single button to the way that he published his initial forecast. ► This time, however,  instead of it publishing a document, RStudio Connect now hosts a live application that runs in a duplicate of Dave's forecasting environment.

### Act 3: Shiny Brings Analytics To Life

The resulting Shiny app now runs on RStudio Connect, allowing Dave to move on to other things. Meanwhile, Connect now provides this set of analytics to any authorized user to explore his forecast for any or all of the products.

### Act 3: Dynamic Analytics / Dashboards

While this app satisfies Virginia's request for on-demand forecasting, she now has heard from marketing that they would really like a forecast dashboard. Dashboards are cool; could we build that for them too?

### Act 3: R Markdown Makes Dashboards Easy

As it turns out, Dave has already set up his Shiny code as part of a flexdashboard. ►  A flexdashboard is just some Markdown text that allows Dave to add additional alert boxes and text to his Shiny dynamic analytics app. 

Dave now adds those R Markdown blocks to his document, and publishes it again. ► Now he has a dashboard for marketing that not only provides the forecast, but alerts users to values that may be of interest.

### Act 3: Shiny Dashboard Hosted On Connect

The resulting Web dashboard now lives on RStudio Connect for any authorized user in the business to access.

#### Act 3: Takeaways
Dynamic analytics in the form of Shiny apps and dashboards give Virginia's group a host of new capabilities.

* Static reports turn into on-demand interactive Shiny apps for business users
* Data scientists can publish Shiny apps in R with a single button
* Data scientists can create dashboards by adding R Markdown
* RStudio Connect hosts those on-demand apps while replicating the data scientist's R environment.

At this point, Dave has successfully bridged the gap between his data science and Virginia's direct reports by publishing his analyses on RStudio Connect where any authorized user can view them. But now, we're going to go even farther: we're going to make Dave's analysis available to a much broader business audience.

### Act 4: Creating A Forecasting Service (API)
Virginia now says, "Finance wants to use your forecasts in their spreadsheets. How can they do that?"

Dave can do this by creating something called an Application Programming Interface or API. In most environments, this would require a fair amount of custom programming and server configuration to get it running. But with R and RStudio Connect, this process becomes only a few minutes work.

### Act 4: Plumber Projects Create A Web Interface Around R Code

To do this, Dave creates what's called a plumber project in RStudio Desktop. Plumber is an R package that makes APIs out of R functions. A plumber project is simply a special type of project in RStudio that allows us to easily build and test these new APIs.

### Act 4: Plumber Projects Create A Web Interface Around R Code

To make his forecasting function into an API, Dave inserts a set of special comments at the beginning of his function. These comments define what Web requests the function will accept and what format it should return its results in.

### Act 4: How Does This Help Excel Users?

Now APIs are all well and good, but Virginia doesn't quite see how this helps the folks in Finance who want to get Dave's forecast into Excel on their PCs.

### Act 4: Windows Excel Can Access Web APIs!

The missing link here is the fact that Microsoft Excel (and some other spreadsheets such as Google Sheets as well) knows how to fetch data from Web APIs.

Dave tells Finance to use the Data menu in Excel and to choose the From Web option. After the dialog box asking for an address shows up, Dave tells Finance to enter the following address:

http://colorado.rstudio.com/rsc/content/1391/forecast?forecast_duration=9&series=All

After a short wait, Finance sees the following in Excel.

### Act 4: Windows Excel Can Access Web APIs!

The returned table of forecast data appears in Excel in Excel's native formats.
Finance can further configure the spreadsheet to fetch this data each time it is opened, should they wish to always have the latest forecast.


#### Act 4: Forecasting Service Takeaways

With just a little bit of work Dave has bridged another gap with the business users in his company. The takeaways here are:

The knowledge that Dave created in his model can now be used as a forecasting service by turning it into an API.
Data scientists can publish APIs to RStudio Connect with a single click; consider how long this might take on other platforms
This forecasting service now allow R results to be shared with business users who don't use R in tools they are used to.

But wait; Virginia has just one more request.

### Act 5: Automated PowerPoint Forecast

The CEO wants Dave's forecast in her monthly slide deck. How can we do that?

### Act 5: Slide Presentations Are Just Markdown Documents

As we've seen previously, we can change the form in which our analysis is published by changing the header of our R Markdown document. Instead of specifying our output will be an html_document or a flexdashboard, we're going to change the output parameter to be "powerpoint_presentation". ► We will also add a corporate PowerPoint template for the document to use.

We can create slides in R Markdown using standard markdown conventions. Headers indicated by sharp signs turn into new slides. R Markdown bullets show up as slide bullets. ►

The analysis, though, all remains the same as it was when we were publishing to a Web page. The forecast values get rendered on a slide titled "Forecast Table" ►

Similarly, the forecast graph gets rendered on a slide titled "Forecast Graph".

When Dave makes those changes and hits the publish button, He sees the following slides get created on Connect:

### Act 5: Slide Presentations Are Just Markdown Documents

As we've seen previously, we can change the form in which our analysis is published by changing the header of our R Markdown document. Instead of specifying our output will be an html_document or a flexdashboard, we're going to change the output parameter to be "powerpoint_presentation". ► We will also add a corporate PowerPoint template for the document to use.

We can create slides in R Markdown using standard markdown conventions. Headers indicated by sharp signs turn into new slides. R Markdown bullets show up as slide bullets. ►

The analysis, though, all remains the same as it was when we were publishing to a Web page. The forecast values get rendered on a slide titled "Forecast Table" ►

Similarly, the forecast graph gets rendered on a slide titled "Forecast Graph".

When Dave makes those changes and hits the publish button, He sees the following slides get created on Connect:

### Act 5: Slide Presentations Are Just Markdown Documents

This is what the resulting PowerPoint slides look like. Notice that the R tables and charts use the Digitcomputronimatics PowerPoint template and colors, allowing the CEO to just drop these slides into her presentation with no changes.

Because this document was published through RStudio Connect, these slides can be produced and emailed automatically according to a schedule, just as we did with the original analysis.

### Act 5: Slide Publishing Takeaways
Our slide publishing takeaways are these:
* R Markdown documents can generate PowerPoint slides directly
* Custom slide templates are supported
* All outputs come from the same R code
* No more cut and paste
* Slides can be automatically published and emailed from RStudio Connect just as with other documents

So in summary, we've shown you five ways that RStudio Connect bridges the gap between your data scientists and the rest of your business people.

### Connect Bridges The Gap Between Data Science And The Business

1. Easy results sharing with one button publishing.
2. Custom reports with scheduling and email that allow users to configure what they get.
3. Dynamic analytics and dashboards that allow your users to directly interact with the data your data scientists produce
4. Application Programming Interfaces (API) that allow people who don't use R to use R's results
5. Slide publishing which allows users to drop R tables and graphical slides right into their PowerPoint decks while eliminating error-prone copying and pasting

And these are just 5 commonly used features. RStudio Connect offers many others as well. That's why we say....
 
### RStudio Connect is a publishing platform that makes sharing data science simple.
 
We appreciate your attention and would be happy to answer any questions you may have.
