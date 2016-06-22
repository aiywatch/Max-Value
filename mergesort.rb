def mergesort(arr)
  l = arr.length
  if l < 2
    return arr 
  elsif l == 2
    return arr[0] > arr[1] ? arr.reverse : arr
  end

  sorted_first_half = mergesort(arr.slice(0,l/2))
  sorted_second_half = mergesort(arr.slice(l/2,l))
  merge(sorted_first_half,sorted_second_half)
end

def merge(left_side, right_side)
  arr = []
  (left_side.length+right_side.length).times do |i|
    return arr.concat(right_side) if left_side.empty?
    return arr.concat(left_side) if right_side.empty?
    
    arr << ((left_side[0] < right_side[0]) ? left_side.delete_at(0) : right_side.delete_at(0))
  end
  arr
end


p mergesort([3,4,2,1,7,5,8,9,0,6])

# p mergesort([4,5,2,7,9,0,11])

# p mergesort([4])
# p mergesort([5,2])

# p merge([1,4], [3,6])