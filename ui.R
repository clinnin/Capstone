

library(shiny)
library(tm)

shinyUI(
  fluidPage(    
   titlePanel("Predictive Text Tool"),
    sidebarLayout(      
      sidebarPanel(
        h4("Enter Text Below"),
        textInput("usertext", "enter one to three words below:", "New York")
        ,
        submitButton("Submit")
        ),

      mainPanel(
        h4("predicted next word:"),
        textOutput("result1")
      )
      
    )
  )
)
