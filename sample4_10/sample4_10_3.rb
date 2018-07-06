#繰り返し処理で使うbreakとreturnの違い
#配列の中からランダムに１つの偶数を選び、その数を10倍して返すメソッド
def calc_with_break
  numbers = [1,2,3,4,5,6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    #breakで脱出する
    #even?偶数ならtrue,奇数ならfalse
    break if n.even?
  end
  target * 10
end
puts calc_with_break

#breakの代わりにreturnを使うと次のようになります
def calc_with_return
  numbers = [1,2,3,4,5,6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    #returnで脱出する？
    return if n.even?
  end
  target * 10
end
puts calc_with_return

#break=>繰り返し処理からの脱出
#return=>メソッドからの脱出
