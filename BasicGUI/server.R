library(shiny)
library(dplyr)
library(ggplot2)

shinyServer(
  function(input, output, session) {
    # Create plot
    output$sleepPlot = renderPlot({
      hist(rnorm(100))
    })
    
    # Create text info
    output$info = renderText({
      paste("Temporary text")
    })
    
    # Create output of observations
    output$table = renderTable({
      rnorm(10)
    })
  }
)