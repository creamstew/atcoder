h = gets.to_i
count = 0
l = 1
while h >= 1 do
  count += l
  h /= 2
  l *= 2
end
puts count