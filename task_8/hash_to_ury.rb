# 末端判定メソッド
def is_terminal?(hash)
  hash.each do |k, v|
    return false if v.instance_of?(Hash)
  end
  true
end

def to_ury(hash)
  # 末端に"text"キーが含まれていることを確認
  if is_terminal?(hash)
    unless hash.has_key?('text')
      puts 'hashの末端には"text"キーを入れてください'
      return false
    end
  end

  # 文字置換
  hash.each do |k, v|
    if v.instance_of?(Hash)
      return false unless to_ury(v)
    else
      v.gsub!(/foo/, 'uryyyy!!')
    end
  end
end

hash = {
  'main' => {
    'first' => { 'text' => 'foobar' },
    'second' => { 'text' => 'fizzbuzz',
                  'child' => { 'text' => 'foobar' } }
  },
  'sub' => {
    'first' => { 'text' => 'fizzbuzz',
                 'child' => { 'text' => 'foobar' } },
  'second'=> {
                   'third' => { 'text' => 'barfoo',
                                'child' => { 'text' => 'foobar' } },
                 'forth' => { 'child' => { 'text' => 'jit_foo_foo' } }
                 }
  },
  'text' => 'foofava'
}

puts '入力 =>'
pp hash
to_ury(hash)
puts "\n出力 =>"
pp hash
