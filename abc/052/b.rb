n = gets.to_i
s = gets.split('')
x = 0
y = [0]
s.each do |str|
 if str == "I"
  x += 1
 else
  x -= 1
 end
 y << x
end
puts y.max