#setwd("D:/Shiny task and codes/Deployment/Testing runGithub for directory based app")

library(shiny)


ui = fluidPage(
  titlePanel("Test rungithub"),
  tabPanel(
    
    
    fileInput("file","uploadkaro"),
    tableOutput("table"),
    textInput("wd2","hi"),
    actionButton("dd","check workdir"),
    verbatimTextOutput("wd"),
    
  )
)

server = function(input,output,session){
  
  
  output$table = renderTable({
    df =  read.csv("local_file.csv")
    df
 })
  
 observeEvent(input$dd,{
   output$wd = renderPrint({
     setwd(input$wd2)
     getwd()
   })
 })
 
}

shinyApp(ui,server)
