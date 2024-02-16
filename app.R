library(shiny)


ui = fluidPage(
  titlePanel("Test rungithub"),
  tabPanel(
    textInput("wd","Set your working directory"),
    verbatimTextOutput("wd"),
    fileInput("file","uploadkaro"),
    tableOutput("table"),
    actionButton("dd","check workdir")
  )
)

server = function(input,output,session){
  
  output$table = renderTable({
    df =  read.csv("local_file.csv")
    df
 })
  
 observeEvent(input$dd,{
   output$wd = renderPrint({
     getwd()
   })
 })
 
}

shinyApp(ui,server)
