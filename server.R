#Shiny Project Height of Loblolly tree and some other tall things

library(shiny)
library(UsingR)
data(Loblolly)

shinyServer(
    function(input, output){
        output$select <- renderPrint({ input$select })
        output$newPlot <- renderPlot({
            plot(Loblolly$age, Loblolly$height,
                 xlab="Tree Age in years", ylab="Height of Tree in feet", 
                 pch=19, col = Loblolly$Seed, main="Loblolly height to age")
            test <- input$test
            fit <- -7.6 + (4 * test) +(-.05 * test^2)
            test2 <- fit * test
            lines(c(test,test),c(3,fit),col="purple",lwd=8)
            output$test <- renderPrint({input$test})
            output$test2 <- renderPrint({fit})
        })
    }
)



