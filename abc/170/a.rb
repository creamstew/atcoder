a = gets.split.map(&:to_i)

a.each_with_index do |n,i|
  puts i+1 if n == 0
end

# exitで抜けて後の処理をなくす
a.each_with_index do |n,i|
  if n == 0
    puts i + 1
    exit
  end
end