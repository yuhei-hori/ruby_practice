#ハッシュ使った繰り返し処理
currencies = {"Japan" => "yen", "us" => "dollar", "india" => "rupee"}
#ブロック引数がキーと値で2個になっている点に注意してください
currencies.each do |key, value|
  puts "#{key} : #{value}"
end

#ブロック引数を１つにするとキーと値が配列に格納されます
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
