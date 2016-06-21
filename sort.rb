# Sort the array from lowest to highest
def sort(arr)
  #arr.sort
  return arr if arr.length < 2
  completed = true
  while(completed) do
    completed = true
    0.upto(arr.length-2).each do |i|
      if (arr[i]>arr[i+1]) 
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        completed = false
      end
    end
  end
  arr
end

# Find the maximum 
#sort([5,2,3,9,1])
def maximum(arr)
  sort(arr).last
end

def minimum(arr)
  sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"