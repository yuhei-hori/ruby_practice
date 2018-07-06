#ハッシュの同値比較、要素数の取得、要素の削除
a = { "x" => 1, "y" => 2, "z" => 3}

#全てのキーと値が同じであればtrue
b = {"x" => 1, "y" => 2, "z" => 3}
puts a == b

#並び順が異なっていてもキーと値が全て同じならtrue
c = {"z" => 3, "y" => 2, "x" => 1}
puts a == c

#キー"x"の値が異なるのでfalse
d = {"x" => 10, "y"=> 2, "z" => 3}
puts a == d

#sizeメソッド（エイリアスメソッドはlength）を使うとハッシュの要素の個数を調べることができます
e = {}
puts e.size
puts a.size

#deleteメソッドを使うと指定したキーに対応する要素を削除できます。戻り値は削除された要素の値です
currencies = {"Japan" => "yen", "us" => "dollar", "india" => "rupee"}
currencies.delete("Japan")
puts currencies

#deleteメソッドで指定したキーがなければnilが返ります。ブロックを渡すと、キーが見つからないときにブロックの戻り値をdeleteメソッドの戻り値にできます。
#削除しようとしたキーが見つからないときはnilが返る
currencies.delete("italy")
puts currencies

#ブロック引数を渡すとキーが見つからないときの戻り値を作成できる
puts currencies.delete("italy"){|key| "Not found: #{key}"}
