#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    sleep_1<-reactive({
        
        a<- subset(sleep,sleep$group==input$Checkbox)
        return(a)
    }
    )
    # Scatter plot
    output$Plot1 <- renderPlot(
        plot(sleep_1()$extra,sleep_1()$ID, xlim = c(-1,6),ylim = c(0,11),pch = 4, xlab = "Extra sleep time", ylab = "Student ID")
    )
    # Text output stating the mean
    output$mOut <- renderText({
        m <- mean(sleep_1()$extra)
        paste("The mean for your selection is: ", m)
    }) 
    
}

)
