def mergesort(arr)
  l = arr.length
  if l < 2
    return arr 
  elsif l == 2
    return arr[0] > arr[1]? arr.reverse : arr
  end
  a = arr.slice(0,l/2)
  b = arr.slice(l/2,l)

  c = mergesort(a)
  d = mergesort(b)
  merge(c,d)
end

def merge(c, d)
  # p c
  # p d
  arr = []
  (c.length+d.length).times do |i|
    if c.empty?
      arr.concat(d)
      break
    elsif d.empty?
      arr.concat(c)
      break
    else
      arr << ((c[0] < d[0]) ? c.delete_at(0) : d.delete_at(0))
    end
  end
  arr
end



p mergesort([4,5,2,7,9,0,11])

p mergesort([4])
p mergesort([5,2])

# p merge([1,4], [3,6])