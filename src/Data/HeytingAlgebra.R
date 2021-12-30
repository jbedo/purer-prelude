list(
  boolConj = function(b1) function(b2) b1 && b2,
  boolDisj = function(b1) function(b2) b1 || b2,
  bootNot = function(b) !b
)
