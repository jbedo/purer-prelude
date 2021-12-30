list(
  intDegree = function(x) min(abs(x), as.integer(2147483647)),
  intDiv = function(x) function(y) if (y == 0) 0 else if (y > 0) floor(x / y) else -floor(x / -y),
  intMod = function(x) {
    function(y) {
      if (y == 0) {
        0
      } else {
        yy <- abs(y)
        ((x %% y) + yy) %% yy
      }
    }
  },
  numDiv = function(n1) function(n2) n1 / n2
)
