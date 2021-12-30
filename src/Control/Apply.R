list(applyArray = function(fs) function(xs) do.call(c, lapply(fs, function(f) lapply(xs, function(x) f(x)))))
