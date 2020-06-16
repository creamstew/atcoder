n = gets.to_i
count = 0

1.upto(n){ |i|
  count += 1 if i.to_s.length.odd ?
}

puts count