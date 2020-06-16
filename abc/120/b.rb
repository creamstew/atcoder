a, b, k = gets.split.map(&:to_i)
array = []
1.upto([a, b].max) do |x|
  if a % x == 0 && b % x == 0
    array << x
  end
end

puts array[array.length - k]