#不等号を使う場合
def liquid?(temperature)
  #0度以上100未満であれば液体、と判断したい
  0 <= temperature && temperature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
