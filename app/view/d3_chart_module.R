box::use(
shiny[NS, tags, renderUI]
)

#' @export
d3_chart_ui <- function(id){
    ns <- NS(id)
    tagList(
        tags$div(id = ns('d3_chart'))
    )
 }

#' @export 
d3_chart_server <- function(id){
 moduleServer(id, function(input, output, session){
    output$d3_chart <- renderUI({
        tags$script()  
 })
    })
}
