s = gets.chomp
acgt = ['A','C','G','T' ]
count = 0

while s.length > 0
  if acgt.include?(s[0])
    i = 0
    while acgt.include?(s[i])
      count = [i+1, count].max
      i += 1
    end
  end
  s.slice!(0)
end

puts count