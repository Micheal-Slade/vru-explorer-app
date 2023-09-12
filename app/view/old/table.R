box::use(
  shiny[h3, moduleServer, NS, tagList],
  rhino[rhinos],
)

#' @export
ui <- function(id) {
  ns <- NS(id)

  tagList(
    h3("Table")
  )
}

#' @export
server <- function(id, data) {
  moduleServer(id, function(input, output, session){

    })
}
