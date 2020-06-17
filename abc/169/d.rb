# 不正解
require 'prime'

n = gets.to_i
count = 0
a = []
until n == 1
  begin
    p = Prime.prime_division(n).map {|p, e| [p] * e }.flatten
  rescue => error # 変数(例外オブジェクトの代入)
    return puts count-1
  end
  c = 0
  ac = p[0]
  while a.include?(p[0])
    c += 1
    p[0] = ac ** c
  end
  a << p[0]
  p[0]
  n = n / p[0]
  count += 1
end
puts count

#正解
require 'prime'
n = gets.to_i
cnt = 0

Prime.prime_division(n).each do |x, y|
  tmp_cnt = 0
  d = 1
  while y > 0
    tmp_cnt += 1 if y - d >= 0
    y -= d
    d += 1
  end
  cnt += tmp_cnt
end

puts cnt