library(openair)

#' @get /hello
#' @html
function(a) {
  v <- as.numeric(unlist(strsplit(a, split=",")))
  # paste(v, collapse=" ")
  result <- bootMeanDF(v)
  toString(result)
}
