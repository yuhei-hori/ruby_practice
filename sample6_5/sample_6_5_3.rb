#正規表現オブジェクト作成時のオプション
#/正規表現/オプション
#１つはiオプションです。このオプションはアルファベットの大文字と小文字の違いを無視してマッチします。
#iオプションを付けると大文字小文字を区別しない
p 'HELLO' =~ /hello/i

#%rを使った場合も最後にオプションを付けられる
p 'HELLO' =~ %r{hello}i

#Regexp.newを使う場合は、Regexp::IGNORECASEという定数を渡します
regexp = Regexp.new('HELLO', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

#mオプションを使うと、任意の文字を表すドット(.)が改行文字にもマッチするようになります。
#mオプションがないと.は改行マッチしない
p "Hello\nBye" =~ /Hello.Bye/

#mオプションを付けると.が改行にもマッチする
p "Hello\nBye" =~ /Hello.Bye/m

#Regexp.newを使う場合は、Regexp::MULTILINEという定数を渡します。
regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
p "Hello\nBye" =~ regexp

#xオプションを使うと、空白文字（半角スペースや改行文字）が無視され、#を使って正規表現中にコメントが書けるようになります。
regexp = /
  \d{3} #郵便番号の先頭３桁
  -     #区切り文字のハイフン
  \d{4} #郵便番号の末尾４桁
/x
p '123-4567' =~ regexp

#xオプションを付けているときに、空白を無視せず正規表現の一部として扱いたい場合はバックスラッシュでエスケープします
regexp = /
  \d{3}
  \ #半角スペースで区切る
  \d{4}
/x
p '123 4567' =~ regexp

#Regexp.newを使う場合は、Regexp::EXTENDEDという定数を渡します。
#バックスラッシュを特別扱いしないように'TEXT'を使う。
pattern = <<'TEXT'
  \d{3} #郵便番号の先頭３桁
  -     #区切り文字のハイフン
  \d{4} #郵便番号の末尾４桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
p '123-4567' =~ regexp

#これらのオプションは同時に使うこともできます。
#iオプションとmオプションを同時に使う。
p "HELLO\nBYE" =~ /Hello.Bye/im

#Regexp.newを使う場合は|で連結（論理和を作成）します。
regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
p "HELLO\nBYE" =~ regexp
