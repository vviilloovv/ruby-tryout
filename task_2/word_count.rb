# 文字列入力
puts '文字列を入力してください'
print '入力: '
input = gets.chomp
words = input.split

# 文字列分割
word_count = {}
words.each do |word|
  unless word_count.has_key?(word)
    word_count[word] = 1
  else
    word_count[word] += 1
  end
end

# 出力
output = word_count.to_a.map do |array|
  array.join(': ')
end
puts '出力: {' + output.join(', ') + '}'
