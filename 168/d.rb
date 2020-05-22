n,m = gets.split.map(&:to_i)
list = Array.new(n+1) { [] }

m.times do
  a,b = gets.split.map(&:to_i)
  list[b] << a
  list[a] << b
end

c = Array.new(n + 1)
c[1] = 1
que = []
que << 1
while que.size > 0
  e = que.shift
  list[e].each do |i|
    next if c[i]
    c[i] = e
    que << i
  end
end
puts "Yes", c[2..-1]