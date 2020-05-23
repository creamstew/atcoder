n = gets.to_i

a = []
(1..9).each { |x|
  (1..9).each { |y|
    a << x*y
  }
}
if a.include?(n)
  puts 'Yes'
else
  puts 'No'
end

# n = gets.to_i
# (1..9).each do |i|
#   if n % i == 0 && n / i < 10
#     puts 'Yes'
#     exit
#   end
# end
# puts 'No'