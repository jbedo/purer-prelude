list(arrayBind = function(arr) function(f) do.call(c, lapply(arr, f)))
