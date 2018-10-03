# FizzBuzzメソッド
def fizz_buzz(n)
  if n % 15 == 0
    'FizzBuzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

# 入力
print '数字を入力してください : '
input = gets.chomp

# 1以上の自然数が入力された場合FizzBuzz実行
if input =~ /^[1-9]\d*$/
  fizz_buzz_array = [*1..input.to_i].map { |n| fizz_buzz(n) }
  puts fizz_buzz_array.join(', ')
else
  puts '1以上の半角整数のみ入力してください'
end
