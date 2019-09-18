def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, starting_point= nil)
  if starting_point
    num = starting_point
    i = 0
  else
    num = source_array[0]
    i = 1
  end

  while i < source_array.length
    num = yield(num, source_array[i])
    i += 1
  end
num
end