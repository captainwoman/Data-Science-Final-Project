#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shinyanimate)
library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)
library(magrittr)
library(bslib)
shinyUI(
  navbarPage("NextWord!",
             theme = shinytheme("darkly"),
             tabPanel("Home",
                      tags$h4(tags$b(tags$i("Author: Sunaina"))),
                      br(),
                      
                      fluidPage( 
                        br(),
                        tags$img(src= "Predict.jpg" , width = "800px", height = "100px"),
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("userInput",
                                      "Enter a word or phrase:",
                                      value =  "",
                                      placeholder = "Enter text here"),
                            br(),
                            sliderInput("numPredictions", "Number of Predictions:",
                                        value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                          ),
                          mainPanel(
                           
                            h4("Input text"),
                            verbatimTextOutput("userSentence"),
                            br(),
                            h4("Predicted words"),
                            verbatimTextOutput("prediction1"),
                            verbatimTextOutput("prediction2"),
                            verbatimTextOutput("prediction3")
                          )
                        )
                      )
             ),
             
             tabPanel
             (
               
               
               
               "About",
               tags$img(src = "about.png", width = "800px", height = "100px"),
               
               tags$h1(tags$b("Data Science Capstone: Final project")),
               
               tags$h4(tags$b(tags$i("Author: Sunaina"))),
               
               tags$h5(tags$b(tags$i("Date: 13th of July, 2022"))),
               
               
               br(),
               
               tags$h3("This application is a web application using R and ",
                 a(href = "https://shiny.rstudio.com/", "Shiny library"),
                 "corresponding to the last assignment from,",
                 a(href = "https://www.coursera.org/learn/data-science-project", "Data Science Capstone from Coursera.")
               )),
             
             tabPanel( 
               "Instructions",
                tags$img(src="Instruction.jpg", height=250, width=850),
               tags$h2("About NextWord!"),
               br(),
               tags$div(tags$h4("'NextWord!' is a Shiny app that uses a text
                            prediction algorithm to predict the next word or words
                            based on text entered.")),
                   br(),
                   br(),
               tags$h4("The method used to achieve this is based on the methods of NLP or 
                            natural language processing.
                            The predicted word or words, will be shown when the app
                            detects that you have finished typing one or more
                            words."),
                   br(),
                   br(),
               tags$h4("Use the slider tool to select up to three next
                            word predictions. The user can choose to predict one, 
                            two or three next words.")
               
             )
  )
)