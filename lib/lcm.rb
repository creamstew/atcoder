# ユークリッドの互除法 - ２つの整数の公約数のうち最大のもの（最大公約数）を求める方法
def gcd(a, b)
  while b > 0
      a, b = b, a%b
  end
  return a
end
# Integer#gcd 標準ライブラリとしても利用可能
624.gcd(735) #=> 3

# 最小公倍数
def lcml(a, b)
  a * b / gcd(a, b)
end

# Integer#lcm 標準ライブラリとしても利用可能
2.lcm(2)                    # => 2
3.lcm(-7)                   # => 21

# Integer#gcdlcm は最大公約数と最小公倍数を同時に求めて配列で返す
624.gcdlcm(735) #=> [3, 152880]