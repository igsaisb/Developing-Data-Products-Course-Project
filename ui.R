#
# This is a simple 2 variable regression model for predicting car gas mileage from horsepower and weight.
# Model is based on data from 1974 sample in the mtcars datas set in R.


library(shiny)

shinyUI(fluidPage(
        titlePanel("Predict MPG from Car Weight and HP"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderHP", "What is the HP of the car?", 52, 335, value = 100),
                        sliderInput("sliderWT", "What is the Wt of the car (000s lbs)?", 1.513, 5.424, value = 3)
                ),
                
                mainPanel(
                        h3("Predicted MPG:"),
                        textOutput("pred1"))
                
        )))

