# main.R

box::use(
  shiny[fluidPage, uiOutput, moduleServer, NS],
  "view/d3_chart_module.R"[d3_chart_ui, d3_chart_server]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    d3_chart_ui(ns("d3_chart"))
  )
}
