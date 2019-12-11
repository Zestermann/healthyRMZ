#' printLE
#'
#' Given year and country, returns a statement for Life exp from gapminder ds
#'
#' @param gap_country character
#' @param gap_year integer
#'
#' @return character
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
#' \dontrun{
#' printLE("Afghanistan", 2007)
#' }
printLE <- function(gap_country, gap_year){

  LE_country <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == gap_year)%>%
    dplyr::select(.data$lifeExp)

  LE_avg <- gapminder::gapminder %>%
    dplyr::filter(.data$year == gap_year) %>%
    dplyr::summarise(avg = base::mean(.data$lifeExp))

  glue::glue("The life expectancy of {gap_country} in {gap_year} was {LE_country} years,
             compared to the average for all countries, {LE_avg}.")
}
