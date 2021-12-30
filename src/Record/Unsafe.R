list(
  unsafeHas = function(label) function(rec) label %in% names(rec),
  unsafeGet = function(label) function(rec) rec[[label]],
  unsafeSet = function(label) {
    function(value) {
      function(rec) {
        copy <- rec
        copy[[label]] <- value
        copy
      }
    }
  },
  unsafeDelete = function(label) function(rec) rec[setdiff(names(rec), label)]
)
