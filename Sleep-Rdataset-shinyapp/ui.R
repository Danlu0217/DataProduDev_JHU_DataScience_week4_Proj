
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Sleep data for students"),
    
    # Checkbox, the variable "Checkbox" has two values which were assigned as "1" and "2"
    fluidRow(
        column(3, checkboxGroupInput("Checkbox",
                                     h3("Pick one student group to see distributions of extra hours of sleep they get and the mean of the group"), 
                                     choices = list("Group1"="1",
                                                    "Group2"="2"),
                                     
                                     
        )),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("Plot1"),
            # Add red color to the text
            span(textOutput("mOut"), style ="color:red")
            
        )
    )
))
