#for文
#排列の中身を順番に加算していくコード
numbers = [1,2,3,4]
sum = 0
for n in numbers
  sum += n
end
puts sum #=>10

#doを入れて１行で書くことも可能
sum_1 = 0
for n in numbers do sum_1 += n end
puts sum_1 #=>10

#eachメソッド
sum_2 = 0
numbers.each do |n|
  sum_2 += n
end
puts sum_2 #=>10

sum_3 = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum_3 += sum_value
end
#for文の中で作成された変数はfor文の外でも参照できる
puts n #=>4
puts sum_value #=>40
