def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(x, starting_point= nil )
  if starting_point
    aggregate = starting_point
    i = 0
  else
    aggregate = x[0]
    i = 1
  end
  while i < x.length
    aggregate = yield(aggregate, x[i])
    i += 1
  end
  aggregate
end
