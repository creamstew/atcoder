a = gets.to_i 
x = gets.split.map(&:to_i)
b = gets.to_i 
y = b.times.map{gets.split}

y.each do |n|
 val = x[n[0].to_i - 1]
 x[n[0].to_i - 1] = n[1].to_i
 puts x.inject(:+) 
 x[n[0].to_i - 1] = val
end