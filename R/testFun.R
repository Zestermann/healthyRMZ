#' Make a binary factor
#'
#' Create a factor vector of n elements, labeled A and B.
#'
#' @param n integer
#'
#' @return factor
#' @export
#'
#' @examples
#' testFun(76)
#'
testFun <- function(n) {
  base::factor (
    base::sample(
      0:1, n, TRUE
    ),
  labels = base::LETTERS[1:2]
  )
}

#wenn kein return angegeben wird, wird das letzte Objekt(hier Vektor) zurückgegeben
