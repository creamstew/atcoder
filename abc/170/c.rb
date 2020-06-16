x,n = gets.split.map(&:to_i)
return puts x if n == 0
p = gets.split.map(&:to_i)
a = [*-1..101].map {|n| n unless p.include? n }.compact!
p a.min_by{|n| (n-x).abs}