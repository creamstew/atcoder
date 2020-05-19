# 幅優先探索

# 問題 アルファベット A, B, C からなる、3文字以下の文字列の組み合わせをすべて取得する。

def bfs(patterns = [])
  # キューとなる配列を用意し、初期状態である空文字列を格納する
  queue = [""]
  until queue.empty?
    # キューから1つ取り出す（先頭から取り出すのでshiftを使う）
    string = queue.shift

    # 文字列を配列に格納する
    patterns << string unless string.empty?

    unless string.length == 3
      queue << string + "A"
      queue << string + "B"
      queue << string + "C"
    end
  end
  return patterns
end

puts bfs