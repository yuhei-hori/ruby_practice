#while文とuntil文
a = []
while a.size < 5
  a << 1
end
puts a

#条件式の後ろにdoを入れると1行で書くこともできます
b = []
while b.size < 5 do b << 1 end
puts b

#しかし、１行で書くのであれば修飾子としてwhile文を後ろに置いた方がスッキリ書けます
c = []
c << 1 while c.size < 5
puts c

#どんな条件でも最低１回は実行したい、という場合はbegin...endで囲んでからwhileを書きます
d = []

while false
  #このコードは常に条件が偽になるので実行されない
  d << 1
end
puts d

#begin...endで囲むとどんな条件でも最低１回は実行される
begin
  d << 1
end while false
puts d

#配列の要素数が３以下になるまで配列の要素を後ろから削除していくコード例です
e = [10,20,30,40,50]
until e.size <= 3
  e.delete_at(-1)
end
puts e
