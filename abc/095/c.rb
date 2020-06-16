a,b,c,x,y = gets.split.map(&:to_i)

array=[]
array << a*x+b*y
array << 2*c*[x,y].max
if x > y
  array << 2*c*[x,y].min + (x-y) * a
else
  array << 2*c*[x,y].min + (y-x) * b
end

puts array.min