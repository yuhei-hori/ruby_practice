#範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
