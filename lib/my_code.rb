def map(element1,&block) 
  element1.map(&block)
  end
def reduce(source_array, starting_point = 0, &block)
  source_array.reduce(&block)
end
