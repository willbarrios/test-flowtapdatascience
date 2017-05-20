library(shiny)
library(ggplot2)
data_census <- read.table("adult.data", sep=",",header=F,col.names=c("age", "workclass", "fnlwgt", "education", "educationnum","maritalstatus", "occupation", "relationship", "race","sex","capitalgain", "capitalloss", "hoursperweek","nativecountry", "income"))

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  output$view <- renderPlot({
    hist(data_census[data_census$maritalstatus==input$dataset,1],main=paste("Distribution of age for",input$dataset),xlab="age")
 })
})
