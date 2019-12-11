#' Make a sorted frequency table for a factor
#' uses forcats package
#'
#' @param x factor
#'
#' @return A tibble
#' @export
#' @examples
#' fcount(iris$Species)
fcount <- function(x) {
  forcats::fct_count(x, sort = TRUE)
}
