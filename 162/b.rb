n = gets.to_i
ans = 0
1.upto(n) do |i|
    ans += i unless i%15==0 || i%3==0 || i%5==0
end
puts ans