library(openair)

#' @post /hello
#' @html
function(a) {
  v <- as.numeric(unlist(strsplit(a, split=",")))
  # paste(v, collapse=" ")
  bootstraping <- bootMeanDF(v)
  percentile <- quantile(v, c(.95))
  result <- cbind(bootstraping,percentile)
  toString(result)
}
