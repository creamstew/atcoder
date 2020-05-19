# 累乗 (二分累乗 or 繰りかえし二乗法)

def power(x, n, mod)
  res = 1
  while n > 0 do
    res = res * x % mod if n & 1 == 1
    x = x * x % mod
    n >>= 1
  end
  return res
end