##################################################################
## SimpleShinyApp Server Code
## Author : Dipanjan Biswas
## Date   : Mar 21, 2015
##################################################################

library(shiny)
library(ggplot2)


shinyServer(function(input, output) {
        output$simPlot <- renderPlot({
                x <- seq(5,15,length=1000)
                y<-  dnorm(x,mean=10, sd=input$sd)
                plot(x,y, type="l", lwd=1)
        })
        
})