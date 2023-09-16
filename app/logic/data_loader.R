# anything that can be expressed without shiny can be put into the logic folder.

box::use(
  reactable[reactable],
  readr,
)

#' @export
fetch_data <- function() {
  read_csv("../static/data/test.csv")
}

#' @export
table <- function(data) {
  data |>
   reactable()

}