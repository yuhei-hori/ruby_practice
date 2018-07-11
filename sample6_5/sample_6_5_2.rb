#case文で正規表現を使う
#case節で指定した文字列がwhen節で指定した正規表現にマッチするとwhen節の処理が実行されます
text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/d{1,2}\/d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
