def merge(left, right)
  new_array = []
  i = 0
  j = 0
  until left[i] == nil && right[j] == nil
    if right[j].nil?
      new_array << left[i]
      i += 1
    elsif left[i].nil?
      new_array << right[j]
      j += 1
    elsif left[i] < right[j]
      new_array << left[i]
      i += 1
    else
      new_array << right[j]
      j += 1
    end
  end
  return new_array
end

def merge_sort(array)
  n = array.length
  if n < 2
    return array
  else
    mid = n / 2
    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..-1])
    merge(left, right)
  end
end

p merge_sort [3, 6, 5, 2, 4, 1] # => [1, 2, 3, 4, 5, 6]
p merge_sort [9, 3, 8, 1, 6, 4] # => [1, 3, 4, 6, 8, 9]
p merge_sort [7, 8, 2, 2, 3, 5] # => [2, 2, 3, 5, 7, 8]