# 素数
require 'prime'

# 以下2通り、いずれの記法でも可
puts Prime.instance.prime?(2)
puts Prime.prime?(2)

# N 以下の素数を求める
Prime.each(n).to_a

# 小さな値から順に N 個の素数を求める
Prime.take(n)

# N 番目の素数を求める
Prime.each_with_index.find {|p, i| i == n-1 }[0]

# N 以上の最小の素数を求める
Prime.find {|p| p >= n }

# N 以下の最大の素数を求める
Prime.take_while {|p| p < n }.last

# 約数の個数を求める
def number_divisors(n)
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

# 約数の総和を求める
def sum_divisors(n)
  Prime.prime_division(n).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
end

def prime?(n)
  return false if n < 2
  return true  if n == 2 or n == 3
  return false if (n % 2).zero?
  3.step(Math.sqrt(n).to_i, 2) {|i| return false if (n % i).zero?}
  true
end