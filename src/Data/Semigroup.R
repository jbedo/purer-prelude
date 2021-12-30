list(
  concatString = function(s1) function(s2) paste0(s1, s2),
  concatArray = function(xs) function(ys) c(xs, ys)
)
