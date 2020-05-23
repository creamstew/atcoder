N = gets.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
S = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる

N = gets.to_i
a, b = N.times.map{gets.split.map(&:to_i)}

# [[a_1, b_1], ..., [a_N, b_N]] を転置して
# [[a_1, ..., a_N], [b_1, ..., b_N]] にする