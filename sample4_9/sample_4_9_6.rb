#loopメソッド
#配列に格納した数値の中からランダムに選び、５が出たタイミングで脱出するコード
numbers = [1,2,3,4,5]
loop do
  # sampleメソッドでランダムに要素を１つ取得する
  n = numbers.sample
  puts n
  break if n == 5
end

#while文で書くことも可能
while true
  n = numbers.sample
  puts n
  break if n == 5
end
