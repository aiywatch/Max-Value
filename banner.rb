def cal_price(d, color)
  t = cal_dim(d) + cal_color(color)
  t + cal_tax(t)
end

def cal_dim (d)
  15*d
end

def cal_color (c)
  c <= 2? 10 : (c-2) * 15
end

def cal_tax (price)
  price * 0.15
end

puts "how long"
l = gets.strip.to_i
puts "How many color?"
c = gets.strip.to_i

puts cal_price(l, c)