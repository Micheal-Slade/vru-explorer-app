# main.R

box::use(
  shiny[fluidPage, tags, uiOutput, moduleServer, NS]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    tags$head(
      tags$script(src = "static/lib/d3.v7.min.js"),
      tags$script(src = "static/js/bar-chart.js")
    ),
    tags$svg(width = 400, height = 300, id = "d3_svg")
  )
}
#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # is server logic always needed?
  })
}
