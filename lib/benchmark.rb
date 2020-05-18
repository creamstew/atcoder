require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "case1" do
    # (計測したい処理その1)
  end
  
  r.report "case2" do
    # (計測したい処理その2)
  end
end