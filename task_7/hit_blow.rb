ans = [*0..9].sample(4)
count = 0

# 正解するまでループ
while true
  # 入力
  puts '4桁の数字は？'
  input = gets.chomp
  unless input =~ /^\d{4}$/
    puts '入力は4桁の半角数字のみ'
    next
  end
  
  input_array = input.split('').map(&:to_i)

  # 重複チェック
  unless input_array.size == input_array.uniq.size
    puts '数字の重複禁止'
    next
  end

  count += 1

  # Hit,Blowチェック
  hit = 0
  blow = 0
  ans.each_with_index do |ans, i|
    input_array.each_with_index do |input, j|
      i == j ? hit += 1 : blow += 1 if ans == input
    end
  end
  
  # 結果判定
  if hit == 4
    puts "#{count}回で正解！"
    break
  end
  puts "外れ： #{hit}Hits, #{blow}Blow"
end
