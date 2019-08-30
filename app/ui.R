pageWithSidebar(
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
)