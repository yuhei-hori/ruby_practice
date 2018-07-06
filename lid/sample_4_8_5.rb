#ブロックローカル変数
numbers = [1,2,3,4]
sum = 0
#ブロックの外にあるsnmとは別物の変数sumを用意する
numbers.each do |n; sum|
  #別物のsumを１０で初期化し、ブロック引数の値を加算する
  sum = 10
  sum += n
  #加算した値をターミナルに表示する
  p sum
end

#ブロックの中で使っていたsumは別物なので、ブロックの外のsumには変化がない
p sum
