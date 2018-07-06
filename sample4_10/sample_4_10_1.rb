#break
#shuffleメソッドで配列の要素をランダムに並び替える
numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  #5が出たら繰り返しを脱出する
  break if n == 5
end

#while文でのコード
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end

#breakに引数を渡すと、while文やfor文の戻り値になります。引数を渡さないと値はnilになります。
ret =
  while true
    break
  end
puts ret #=>nil

ret_1 =
  while true
    break 123
  end
puts ret_1 #=>123

#繰り返し処理が入れ子になっている場合は、内側の繰り返し処理を脱出します。
fruits = ["apple","melon","orenge"]
numbers = [1,2,3]
fruits.each do |fruit|
  #配列の数字をランダムに入れ替え、３が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit},#{n}"
    #numbersのループは脱出するが、fruitsのループは継続する
    break if n == 3
  end
end
