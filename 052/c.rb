# 速度が遅い

require 'prime'
M = 10**9 + 7
N = gets.to_i
count = 1
N.downto(1) { |i| count *= i }
puts count.prime_division.map {|p, e| e + 1 }.inject(:*) % M