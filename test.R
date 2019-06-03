app <- shinyApp(ui <- pageWithSidebar(
  headerPanel("Simple application test"),
  sidebarPanel(
    textInput("n", "Text"),
    br(),
    actionButton("goButton", "Go!"),
    p("Write anything in text box and press Go!")
  ),
  mainPanel(
    verbatimTextOutput("nText")
  )
),

server <- function(input, output) {
  
  # builds a reactive expression that only invalidates 
  # when the value of input$goButton becomes out of date 
  # (i.e., when the button is pressed)
  ntext <- eventReactive(input$goButton, {
    input$n
  })
  
  output$nText <- renderText({
    ntext()
  })
})

runApp(app)

