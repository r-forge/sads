fitgeom <- function(x, trunc, start.value, ...){
  if (!missing(trunc)){
    if (min(x)<=trunc) stop("truncation point should be lower than the lowest data value")
  }
  if (missing(start.value)){
    phat <- 1/(1 + mean(x))
  } else{
    phat <- start.value
  }
  if (missing(trunc)){
    LL <- function(prob) -sum(dgeom(x, prob, log = T))
  } else{
    LL <- function(prob) -sum(trunc("dgeom", x, prob, trunc = trunc, log = T))
  }
  result <- mle2(LL, start = list(prob = phat), data = list(x = x), method = "Brent", lower = 0, upper = 1, ...)
  new("fitsad", result, sad = "geom", trunc = ifelse(missing(trunc), NaN, trunc))
}