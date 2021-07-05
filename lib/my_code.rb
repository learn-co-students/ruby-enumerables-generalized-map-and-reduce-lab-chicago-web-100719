def map(array)
  new = []
  i = 0
  while i < array.length do
    
    new.push(yield(array[i]))
    i += 1 
  end

  return new

end


def reduce(source_array, start_value = 0)
  i = 0 
  total = start_value
  
  while i < source_array.length do
    
     total = yield(total, source_array[i])
      i += 1

  end
  
  if total == 0 
    return true 
  else
    return total
  end
  
end
