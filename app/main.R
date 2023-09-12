# main.R

box::use(
  shiny[fluidPage, tags, uiOutput, moduleServer, NS, reactive]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    tags$head(
      tags$script(src = "static/d3.v7.min.js")
    ),
    tags$div(id = ns("bar_chart"), style = "width: 400px; height: 300px;"),
    tags$button(onclick = "App.drawBarChart()", "Draw Bar Chart"))
}
#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

   # TODO: data should be maipulated here then passed to JS
    data <- data.frame(name = c("A", "B", "C"), value = c(23, 45, 67))
    session$sendCustomMessage(type = 'prepareDataForChart', message = data)
  })
}
