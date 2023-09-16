box::use(
  shiny[shinyApp],
  app/view/scatter_module[ui, server]
)

# UI definition function
app_ui <- function(request) {
  fluidPage(
    titlePanel("Shiny Rhino r2d3 Example"),
    ui("scatter1")
  )
}

# Server logic function
app_server <- function(input, output, session) {
  server("scatter1")
}

shinyApp(ui = app_ui, server = app_server)
