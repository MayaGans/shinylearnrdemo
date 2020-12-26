library(shiny)

ui <- fluidPage(
    circleInput("mycircle"),
    verbatimTextOutput("debug"),
)

server <- function(input, output) {
    output$debug <- renderText(input$mycircle)
}

shinyApp(ui = ui, server = server)
