#**で展開させる
#**をハッシュの前に付けるとハッシュリテラル内でほかのハッシュのキーと値を展開することができます
h = {us: 'doller', india: 'rupee'}
#変数hのキーと値を**で展開させる
#**をつけない場合は構文エラーとなる
a = {japan: 'yen', **h}
puts a

#上のコードは**のかわりにmergeメソッドを使っても同い結果になります
b = {japan: 'yen'}.merge(h)
puts b
