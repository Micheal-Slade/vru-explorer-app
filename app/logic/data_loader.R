# anything that can be expressed without shiny can be put into the logic folder.

box::use(
  readr[read_csv]
)

#' @export
fetch_data <- function() {
  read_csv("../static/data/test.csv")
}
