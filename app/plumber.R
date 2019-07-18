library(openair)

#' @get /hello
#' @html
function(){
  # test <- rnorm(20, mean = 10)
  test <- c(1,2,3,4,5,6,7,8,9,10)
  # paste(test, collapse=" ")
  result <- bootMeanDF(test)
  toString(result)
}
