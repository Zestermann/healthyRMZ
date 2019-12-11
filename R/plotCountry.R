#' plotCountry
#'
#' plot the life expectancy vs GDP for a given country
#'
#' @param name country of gapminder
#'
#' @return plot
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#'
#' @examples
#' ' @examples
#' '\dontrun{
#' plotCountry("Germany")
#' }
plotCountry <- function(name) {

  gap_country <- gapminder::gapminder %>% dplyr::filter(.data$country == name)

  gapminder::gapminder %>% ggplot2::ggplot(ggplot2::aes(x = base::log10(.data$gdpPercap), y = .data$lifeExp, size = .data$pop))+
    ggplot2::geom_point(alpha = .25)+
    ggplot2::geom_point(data = .data$gap_country, ggplot2::aes(color = .data$year))

}

if(getRversion() >= "2.15.1")  utils::globalVariables(c(".data", "%>%"))
