##################################################################
## SimpleShinyApp User Interface
## Author : Dipanjan Biswas
## Date   : Mar 21, 2015
##################################################################

library(shiny)

shinyUI(pageWithSidebar(
        
        headerPanel("Simple Shiny App"),
        
        sidebarPanel(
                helpText("This application simulates a normal distribution with mean 10. The standard deviation can be changed"),
                helpText("Move slider to change standard deviation"),
                sliderInput("sd", "Standard Deviation:", 0.1, 3, 0.1, step = 0.1)
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("Plot", plotOutput("simPlot"))
                ))
))