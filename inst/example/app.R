library(shiny)

ui <- fluidPage(
    circleInput("mycircle"),
    verbatimTextOutput("debug")
)

server <- function(input, output) {

  observe({
    print(input$mycircle[which(names(input$mycircle) == "test")])
  })
    output$debug <- renderText(input$mycircle)
}

shinyApp(ui = ui, server = server)
