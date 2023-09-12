# app/view/d3_chart_module.R

box::use(
  shiny[NS, uiOutput, renderUI]
)

#' @export
d3_chart_ui <- function(id) {
  ns <- NS(id)
  tagList(
    uiOutput(ns('d3_chart'))
  )
}

#' @export
d3_chart_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$d3_chart <- renderUI({
      r2d3::r2d3(
        script = 'modules/bar-chart.js',
        data = c(10, 20, 30, 40, 50)
      )
    })
  })
}
