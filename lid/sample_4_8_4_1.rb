dimensions = [
  [10,20,100],
  [30,40,200],
  [50,60,300],
]
#３つの値をブロック引数に渡そうとするが、２つしかないので３つめの値は切り捨てられる
dimensions.each do |length, width, foo, bar|
  p length, width, foo, bar
end
