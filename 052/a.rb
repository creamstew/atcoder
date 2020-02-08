a,b,c,d = gets.split.map(&:to_i)
x = []
x << a * b 
x << c * d
puts x.max 