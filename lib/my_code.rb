def map(source_array)
  new_array = []
  i = 0
  while source_array.length > i do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, starting_point= nil)
  if starting_point
    answer = starting_point
    i = 0
  else
    answer = source_array[0]
    i = 1
  end

  while source_array.length > i
    answer = yield(answer, source_array[i])
    i += 1
  end
  answer
end