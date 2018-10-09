puts '0-100で数字を当てて'
ans = [*0..100].sample
count = 0

# 正解するまでループ
while true
  input = gets.chomp
  unless input =~ /^\d{1,3}$/ && (0..100).include?(input.to_i)
    puts '入力は0-100の半角数字のみ'
    next
  end

  # 入力値判定
  count += 1
  if input.to_i < ans
    puts 'もっと上'
    next
  elsif ans < input.to_i
    puts 'もっと下'
    next
  else
    puts "正解！・・・#{count}回目で当てました"
    break
  end
end
