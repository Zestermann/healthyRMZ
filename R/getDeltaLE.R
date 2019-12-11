#' getDeltaLE
#'
#' calculates the Delta of LE from 2007 to 1952 for a given country
#'
#' @param gap_country char
#'
#' @return numeric
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
#' \dontrun{
#' getDeltaLE("France")
#' }

getDeltaLE <- function(gap_country){

  stopifnot(is.character(gap_country),
            length(gap_country)==1
            #,            gapminder::gapminder$country %in% gap_country
            )

  exp2007 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 2007) %>%
    dplyr::select(.data$lifeExp)

  exp1952 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 1952) %>%
    dplyr::select(.data$lifeExp)
  return(exp2007$lifeExp - exp1952$lifeExp)
}

# quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c(".data", "%>%"))
