library(shiny)
data_census <- read.table("adult.data", sep=",",header=F,col.names=c("age", "workclass", "fnlwgt", "education", "educationnum","maritalstatus", "occupation", "relationship", "race","sex","capitalgain", "capitalloss", "hoursperweek","nativecountry", "income"))
# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Age distribution by marital status"),

  sidebarPanel(
    selectInput("dataset", "Choose the marital status:", 
                choices = unique(data_census$maritalstatus))
  ),

  mainPanel(
    plotOutput("view")
  )
))