h,a = gets.split.map(&:to_i)
count = 0

while h > 0 do
  h -= a
  count += 1
end

puts count