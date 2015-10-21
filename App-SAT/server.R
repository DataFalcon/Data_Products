
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(UsingR)
library(ggplot2)
data(SAT)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({

    # user input gives x and y data for plot
    x <- SAT[, input$x_value]
    y <- SAT[, input$y_value]
    state <- character(length(x))
    state <- SAT$state
    df_SAT <- data.frame(cbind(state,x,y))
    size = sqrt((y - mean(y))^2)
    
    # user input for color is tested, if not an allowed color, the default is uesd
    if( input$color %in% colors()){ color <- input$color} 
    else {color <- "yellow"}

    # draw the plot with point size from slider
    g = ggplot(df_SAT, aes(x,y, label = SAT$state)) + ggtitle("SAT Score") + theme(plot.title = element_text(face = "bold"))
    g = g + geom_point(size = input$size, colour = color) 
    
    # points are labled with state names but sized so that only "exceptional" states are prominent
    if(input$stateName){
        g = g + geom_text(aes(size = sqrt((y - mean(y))^2)))
        g = g + theme(legend.position = "none")
    }
    
    
    g = g + xlab(as.character(input$x_value)) + ylab(as.character(input$y_value))
    
    g = g + geom_smooth(method='lm',formula= y ~ x)
    g
})
})
