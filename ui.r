#Shiny Project Height of Loblolly tree and some other tall things

library(shiny)
library(UsingR)
shinyUI(verticalLayout(
    headerPanel("shiny project"),
    wellPanel(
        selectInput("select", label = h3("select tall things"),
                    choices = list("Giraffe" = " Giraffes are tall, about 18 feet tall", 
                                   "Moose" = "A moose is pretty tall, about 8 feet tall", 
                                   "Cake" = "Cakes are not very tall",
                                   "Chicken" = "Chickens are not too tall",
                                   "High Dive Platform" = "Jumping from 33 feet would scare me", 
                                   "Saguaro Cactus" = "Saguaro cactus are quite tall, sometimes 50 feet"), 
                    selected = 1),             
        sliderInput('test','age of tree',value=12,min=3,max=25,step=1),
        h4("age of tree in years "),
        verbatimTextOutput('test'),
        h4("height of tree in feet"),
        verbatimTextOutput("test2")
    ),           
    
    mainPanel(
        h3('Tall Things'),
        hr(),
        fluidRow(column(3, verbatimTextOutput('select'))),
        plotOutput('newPlot')
    ))
)