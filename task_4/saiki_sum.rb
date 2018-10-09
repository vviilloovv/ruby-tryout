# 再帰合計算出メソッド
def saiki_sum(n)
  return 0 if n < 1
  n + saiki_sum(n-1)
end

# 数値入力
puts "自然数を半角で入力してください"
input = gets.chomp

# 入力値チェック
unless input =~ /^\d+$/
  puts "入力は自然数のみにしてください"
else
  puts "合計 : " + saiki_sum(input.to_i).to_s
end
