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
    redone_startPoint = start_point
    i = 0
  else
    redone_startPoint = source_array[0]
    i = 1
  end
  
  while i < source_array.length
    redone_startPoint = yield(redone_startPoint, source_array[i])
    i += 1
  end
  redone_startPoint
end