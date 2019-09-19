def map(array)
  new_array = Array.new
  i = 0
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

def reduce(array, sp = nil)
  if sp
    total = sp
    i = 0
  else
    total = array[0]
    i = 1
  end
  while i < array.length
    total = yield(total, array[i])
    i += 1
  end
  total
end
