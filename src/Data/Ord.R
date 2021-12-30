(function() {
  unsafeCompareImpl <- function(lt) {
    function(eq) {
      function(gt) {
        function(x) {
          function(y) {
            if (x < y) {
              lt
            } else if (x == y) {
              eq
            } else {
              gt
            }
          }
        }
      }
    }
  }

  list(
    ordBooleanImpl = unsafeCompareImpl,
    ordIntImpl = unsafeCompareImpl,
    ordNumberImpl = unsafeCompareImpl,
    ordStringImpl = unsafeCompareImpl,
    ordCharImpl = unsafeCompareImpl,
    ordArrayImpl = function(f) {
      function(xs) {
        function(ys) {
          n <- length(xs)
          m <- length(ys)
          for (i in 1:min(n, m)) {
            o <- f(xs[i])(ys[i])
            if (o != 0) {
              return(o)
            }
            if (n == m) {
              return(0)
            }
            if (n > m) {
              return(-1)
            }
            return(1)
          }
        }
      }
    }
  )
})()
