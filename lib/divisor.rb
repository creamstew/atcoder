# 約数全列挙

# 素直に実装
def divisor(n)
  array = []
  i = 1
  while i*i <= n do
    if n%i == 0
      array.push(i)
      if i != 1 && i*i != n
        array.push(n/i)
      end
    end
    i += 1
  end
  return array
end

# primeを使用する こちらのほうが高速で処理できる
require 'prime'

def divisor2(n)
  return [1] if n == 1
  Prime.prime_division(n).map do |e|
    Array.new(e[1]+1).map.with_index do |element, i|
      e[0]**i
    end
  end.inject{|p,q| p.product(q)}.map do |a|
    [a].flatten.inject(&:*)
  end.sort
end