# main.R

box::use(
  shiny[fluidPage, tags, uiOutput, moduleServer, NS, reactive]
)


#' @export
ui <- function(id) {
  ns <- shiny::NS(id)
  
  fluidPage(
    tags$head(
      tags$script(src = "static/d3.v7.min.js"),
      tags$script(src = "static/bar-chart.js")
    ),
    tags$svg(class = "chart", id = ns("my_chart"))
  )
}

#' @export
server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    # server logic
  })
}