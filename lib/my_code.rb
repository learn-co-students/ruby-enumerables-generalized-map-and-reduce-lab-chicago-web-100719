def map(array)
  new_array = []
  array.length.times do |index|
    new_array[index] = yield(array[index])
  end
  return new_array
end

def reduce(array, tally = nil)
  if tally
    sum = tally
    i = 0 
  else
    sum = array[0]
    i = 1 
  end 
  while i < array.length
    sum = yield(sum, array[i])
    i += 1 
  end
  sum
end
  
  