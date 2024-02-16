setwd("D:/Shiny task and codes/Deployment/Testing runGithub for directory based app")

library(shiny)


ui = fluidPage(
  titlePanel("Test rungithub"),
  tabPanel(
    fileInput("file","uploadkaro"),
    tableOutput("table")
  )
)

server = function(input,output,session){
  
  output$table = renderTable({
    df =  read.csv("local_file.csv")
    df
 } )
}

shinyApp(ui,server)
