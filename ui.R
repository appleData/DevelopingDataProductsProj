library(shiny)
library(ggplot2)


dataset <- iris

shinyUI(fluidPage(
  titlePanel("K Means Cluster"),
  responsive = FALSE,
  fluidRow(style = "padding-bottom: 20px;",
           column(4, selectInput('xcol', 'X Variable', names(dataset))),
           column(4, selectInput('ycol', 'Y Variable', names(dataset),
                                 selected=names(dataset)[[2]])),
           column(4, numericInput('clusters', 'Cluster count', 3,
                                  min = 1, max = 9),
  fluidRow(style = "padding-top: 20px;", 
          column(8,align="right", plotOutput('kmeans', height = "400px",width = "800px"))),
  
      p("Documentation:",a("CourseProject",href="Readme.html")))
  ))
)




