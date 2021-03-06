a,b = gets.split.map{|s|s.split('.').join.to_i}
puts a*b/100


# Floatによる誤差
# 1.2 - 1.0
# > 0.19999999999999996  #<= 0.2 を期待するがズレが生じる

# 10.0 / 6.0
# => 1.6666666666666667  #<= 1.66666...と無限に続くはずがまるめられる

# float(double) を利用するメリットは丸め誤差が生じるけれど、
# それを無視できるのであればパフォーマンスがいいということです。
# アニメーションの演算などそういうのは多少の誤差は許容できるのでfloatが使われ、
# きちんとBigDecimalを使った演算をするときはお金の計算など少しの誤差も許容できない場合です。
# その中でパフォーマンスについて簡単なスクリプトで実行してみた所、
# たしかにBigDecimalのほうが若干遅い感じはしました。（そんなに差はないかも）