k = gets.to_i
s = gets.chomp

c = s.size

if k < c
  puts s[0..k-1]+'...' #"#{s[0..K-1]}..."
else
  puts s
end