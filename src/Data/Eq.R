(function() {
  refEq <- function(a) function(b) a == b
  list(
    eqBooleanImpl = refEq,
    eqIntImpl = refEq,
    eqNumberImpl = refEq,
    eqCharImpl = refEq,
    eqStringImpl = refEq,
    eqArrayImpl = function(f) {
      function(a) {
        function(b) {
          if (length(a) != length(b)) {
            return(F)
          }
          for (i in seq(along = a)) {
            if (!f(a[i])(b[i])) {
              return(F)
            }
          }
          T
        }
      }
    }
  )
})()
