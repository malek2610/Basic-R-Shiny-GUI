library(shiny)
library(ggplot2)

shinyUI(
  fluidPage(
    # Application title
    titlePanel("Basic Graphical User Interface"),
    
    # Sidebar with options for data set
    sidebarLayout(
      sidebarPanel(
        h3("Select the order:"),
        
        selectizeInput(
          "vore",
          "Vore",
          selected = "omni",
          choices = levels(as.factor(msleep$vore))
        ),
        
        br(),
        
        sliderInput(
          "size",
          "Size of points on graph",
          min = 1,
          max = 10,
          value = 5,
          step = 1
        ),
        
        checkboxInput(
          "concervation",
          h4(
            "Color code cnservation status", 
            style = "color:red;",
            FALSE
          )
        )
      ),
      
      mainPanel(
        plotOutput("sleepPlot"),
        textOutput("info"),
        tableOutput("table")
      )
    ) 
  )
)