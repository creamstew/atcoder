# ユークリッドの互除法 - ２つの整数の公約数のうち最大のもの（最大公約数）を求める方法
def gcd(a, b)
  while b > 0
      a, b = b, a%b
  end
  return a
end
# Integer#gcd 標準ライブラリとしても利用可能
624.gcd(735) #=> 3