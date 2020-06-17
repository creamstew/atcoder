n = gets.to_i
a = gets.split.map(&:to_i)
mod = 10**18
sum = 1

# 0があればその場で処理を抜けて、負担を減らす
if a.include?(0)
  puts 0
  exit
end

a.each do |i|
  sum *= i
  if sum > mod
    puts -1
    exit
  end
end

puts sum