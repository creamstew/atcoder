a = gets.split.map(&:to_i)
 
if a.uniq.count === 2
  puts 'Yes'
else
  puts 'No'
end