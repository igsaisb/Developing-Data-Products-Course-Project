#
# This is a simple 2 variable regression model for predicting car gas mileage from horsepower and weight.
# Model is based on data from 1974 sample in the mtcars datas set in R.


library(shiny)



shinyServer(function(input, output) {
        #mtcars$mpgsp <- ifelse(mtcars$mpg - 20 > 0, mtcars$mpg - 20, 0)
        
        model_pred <- reactive({
                model <- lm(mpg ~ hp+wt, data = mtcars)
                HPInput <- input$sliderHP
                WTInput <- input$sliderWT
                predict(model, newdata = data.frame(hp = HPInput, wt = WTInput))
                                 })
        
        output$pred1 <- renderText({
                model_pred()})
})


  

