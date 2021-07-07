# Your Code Here
def map(source_array)
  
  finished_array = []
  i = 0 
  while i < source_array.length 
  finished_array.push(yield(source_array[i]))
  i += 1 
  
end
finished_array
end

def reduce(source_array, start_point=nil)
  if start_point 
  actual_start_point = start_point
  i = 0 
else
  actual_start_point = source_array[0]
  i = 1 
end
  
  while i < source_array.length 
    actual_start_point = yield(actual_start_point, source_array[i])
    i += 1 
  end
  actual_start_point
end