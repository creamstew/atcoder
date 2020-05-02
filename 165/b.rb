require 'bigdecimal'

x = gets.to_i
money = 100
count = 0
until (money >= x) do
  money = (BigDecimal(money.to_s) * BigDecimal("1.01")).floor
  count += 1
end
puts count