
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# This APP started from the RStudio App-1 example but was heavily modified
# It uses the SAT data in UsingR - SAT scores averaged by state against several factors
# It allows the user to explore this dataset

library(shiny)
library(UsingR)
data(SAT)

shinyUI(fluidPage(

  # Application title
  titlePanel("Avg SAT Scores by State"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("size",
                  "Data point size",
                  min = 2,
                  max = 10,
                  value = 3),
      selectInput("x_value",
                  "Factor",
                  names(SAT)[2:8],
                  selected = "ratio"),
      selectInput("y_value",
                  "Score",
                  names(SAT)[6:8],
                  selected = "total"),
      checkboxInput("stateName",
                    "State Names",
                    value = TRUE),
      textInput("color",
                  label = "Symbol Color",
                  value = "yellow" ),
      helpText({"This app allows the exploration of the SAT dataset
                 which contains mean SAT test scores by state"
        }),
      helpText({ "Expend is the expenditure per student in $1000, 
                 ratio is the student/teacher ratio, 
                 salary is teacher salary in $1000,
                 perc is the percentage of students taking the SAT, 
                 math-verbal-total are the SAT scores.
                 Yellow points with state labels is the default (and when color entry not recognized).
                 The size of the state label indicates exceptional values (far from mean)."
      })
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      textOutput("explainer")
    )
  )
))
