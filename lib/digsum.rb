# 桁和
def digsum(n)
  res = 0;
  while n > 0 do
    res += n%10;
    n /= 10;
  end
  return res
end