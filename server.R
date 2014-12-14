library(shiny)
library(tm)

source("global.R")

shinyServer(
  function(input, output) {
  

#    
  # processedinput <- input$usertext  
    
  #output$result1 <- renderText({as.character(subset(subset(ngram,root==input$usertext),rank==1)$outcome)})
output$result1 <- 
  renderText({

    if(!is.null(
    as.character(subset(subset(ngram,root==
  gsub("^\\s+|\\s+$", "",stripWhitespace(removeWords(removeWords(
  removeNumbers(tolower( gsub('[])(;:#%$^*\\~{}[&+=@/"`|<>_]+', "",
  input$usertext))),stopwords('english')),profanity)))),rank==1)$outcome)
)
)
      
{
if (
0 != length(
  as.character(subset(subset(ngram,root==
  gsub("^\\s+|\\s+$", "",stripWhitespace(removeWords(removeWords(
  removeNumbers(tolower( gsub('[])(;:#%$^*\\~{}[&+=@/"`|<>_]+', "",
  input$usertext))),stopwords('english')),profanity)))),rank==1)$outcome)
))
{
as.character(subset(subset(ngram,root==
gsub("^\\s+|\\s+$", "",stripWhitespace(removeWords(removeWords(
removeNumbers(tolower( gsub('[])(;:#%$^*\\~{}[&+=@/"`|<>_]+', "",
input$usertext))),stopwords('english')),profanity)))),rank==1)$outcome)
}
else
  #the most common 1-gram
{"in"}
    }
else
  #the most common 1-gram
{"in"}
#    as.character(subset(subset(ngram,root==
#                                 gsub("^\\s+|\\s+$", "",
#                                      stripWhitespace(
#                                        removeWords(
#                                          removeWords(
#                                            removeNumbers(
#                                              tolower( 
#                                                gsub('[])(;:#%$^*\\~{}[&+=@/"`|<>_]+', "",
#                                                     input$usertext
#                                                )
#                                              )
#                                            )
#                                            ,stopwords('english'))
#                                          ,profanity)
#                                      )
#                                 )
#    ),rank==1)$outcome)
    
    
    
    
    })
    

  
  
})

#runApp("~/Coursera/Final")
#shinyapps::deployApp("~/Coursera/Final", account="aclinnin")

