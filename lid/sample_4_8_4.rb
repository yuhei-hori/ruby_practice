#配列がブロック引数に渡される場合
dimensions =[
  #[縦,横]
  [10,20],
  [30,40],
  [50,60],
]
#面積の計算結果を格納する配列
areas = []
#ブロック引数が1個であれば、ブロック引数の値が配列になる
dimensions.each do |dimensions|
  length = dimensions[0]
  width = dimensions[1]
  areas << length * width
end
puts areas

#配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
dimensions.each do |length, width|
  areas << length * width
end
puts areas

#lengthとwidthには値が渡されるが、fooとbarはnilになる
dimensions.each do |length, width, foo, bar|
  p length, width, foo, bar
end

#いったん配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  #配列から縦と横の値を取り出す
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end

#ブロック引数を()で囲んで、配列の要素を別々の引数として受け取る
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
