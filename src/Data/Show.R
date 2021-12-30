list(
  showIntImpl = paste,
  showNumberImpl = paste,
  showStringImpl = dQuote,
  showArrayImpl = function(f) function(xs) paste("[", paste(lapply(xs, f), collapse = ","), "]", sep = ""),
  cons = function(h) function(t) paste(h, t, sep = ""),
  join = function(sep) function(xs) paste(xs, collapse = sep)
)
