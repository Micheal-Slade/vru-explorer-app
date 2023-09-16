box::use(
  shiny[moduleServer, NS],
  r2d3[d3Output, renderD3],  # Note this line
  app/logic/data_loader[fetch_data]
)


#' @export
ui <- function(id) {
  ns <- NS(id)
  d3Output(ns("scatterPlot"))
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    data <- fetch_data()
    output$scatterPlot <- renderD3({
      r2d3(data = data, script = "scatterplot.js")
    })
  })
}
