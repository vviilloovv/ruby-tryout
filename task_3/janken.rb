hand = { '0' => 'グー', '1' => 'チョキ', '2' => 'パー' }

# 勝負がつくまで無限ループ
while true
  puts '「じゃんけん・・・」'
  puts '> 0.グー 1.チョキ 2.パー'
  
  # 両者の手を決定
  my_hand = gets.chomp
  unless my_hand =~ /^[0-2]$/
    puts '半角数字0,1,2以外は反則！'
    next
  end
  your_hand = hand.keys.sample
  puts '「ぽい！」'
  puts '＊コンピュータ：' + hand[your_hand]
  puts '＊あなた：' + hand[my_hand]

  # 勝敗判定
  case my_hand.to_i - your_hand.to_i
  when 0
    puts '「アイコでしょ！」'
    next
  when 1, -2
    puts 'あなたの負け！'
    break
  when -1, 2
    puts 'あなたの勝ち'
    break
  end
end

