a = gets.split(" ")
if a[1] == "+"
    puts a[0].to_i + a[2].to_i
else
    puts a[0].to_i - a[2].to_i
end

# 他の人の回答
# puts eval(gets)
# 文字列 expr を Ruby プログラムとして評価してその結果を返す