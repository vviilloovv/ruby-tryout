# 昇順ソートメソッド（バブルソート）
def sort_asc(arr)
  # 隣り合う要素を比較して入れ替え
  arr.size.step(1, -1) do |term|
    (1...term).each do |n|
      if arr[n - 1] > arr[n]
        arr[n - 1], arr[n] = arr[n], arr[n - 1]
      end
    end
  end
end

# 降順ソートメソッド（クイックソート）
def sort_desc(arr)
  # 要素数が1以下の場合返却
  return arr if arr.size <= 1

  # 配列の最初の要素をピボットに設定
  pivot = arr[0]

  # ピボットで配列を分割
  left = arr[1..-1].select { |n| pivot < n }
  right = arr[1..-1].select { |n| n<= pivot }

  # 再帰呼び出し
  left = sort_desc(left)
  right = sort_desc(right)

  # 配列マージ
  left.push(pivot) + right
end


# 配列初期化
numbers = [20, 31, 42, 13, 5, 31]
puts '配列 : [' + numbers.join(', ') + ']'

# 合計
sum = numbers.inject(0) { |result, n| result + n }
puts '合計 : ' + sum.to_s

# 平均
ave = numbers.inject(0) { |result, n| result + n } / numbers.size
puts '平均 : ' + ave.to_s

# 最大値
max = numbers.inject(numbers.first) { |max, n| max < n ? n : max }
puts '最大値 : ' + max.to_s

# 最小値
min = numbers.inject(numbers.first) { |min, n| n < min ? n : min }
puts '最小値 : ' + min.to_s

# 昇順ソート
numbers_asc = numbers.map { |n| n }
sort_asc(numbers_asc)
puts '小さい順 : [' + numbers_asc.join(', ') + ']'

# 降順ソート
numbers_desc = numbers.map { |n| n }
numbers_desc = sort_desc(numbers_desc)
puts '大きい順 : [' + numbers_desc.join(', ') + ']'
