# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
#a = "hello"
#b = "hello"

#puts a.object_id
#puts b.object_id

# cにbを代入する。bとcはどちらも同じオブジェクト
#c = b
#puts c.object_id

# メソッドの引数にcを渡す。引数として受け取ったdはb,cと同じオブジェクト
#def m(d)
  #return d.object_id
#end
#puts m(c)

# equal?メソッドを使って同じオブジェクトかどうか確認しても良い（trueなら同じオブジェクト）
#puts a.equal?(b)
#puts b.equal?(c)

# b,cは同じオブジェクト、aは異なるオブジェクト
a = "hello"
b = "hello"
c = b

# 渡された文字列を破壊的に大文字に変換するメソッドを定義する
def m!(d)
  return d.upcase!
end

# cにm!メソッドを適用する
m!(c)

# b,cはいずれも大文字になる
puts b
puts c

# aは別のオブジェクトなので大文字にはならない
puts a
