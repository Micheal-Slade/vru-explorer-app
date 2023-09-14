box::use(
  shiny[h3, moduleServer, NS],
  readr[read_csv],
  reactable,
)

#' @export
ui <- function(id) {
  ns <- NS(id)

  h3("Table Section")
}

#' @export
server <- function(id) {
moduleServer(id, function(input, output, session) {
  print("this came in from the table server")
  })
}
