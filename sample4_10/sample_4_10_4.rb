#next
#naxt=>繰り返し処理を途中で中断し、次の処理を進める場合はnextを使います。
#偶数であれば中断して次の繰り返し処理に進むコード
numbers = [1,2,3,4,5]
numbers.each do |n|
  #偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
  puts n
end #=>1,3,5

#eachメソッドの中だけではなく、while,until,forの中でも使える点や、入れ子になった繰り返し処理では一番内側のループだけが中断の対象になる点はbreakと同じ
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  #while文の中でnextを使う
  next if n.even?
  puts n
end

fruits = ["apple","melon","orange"]
numbers = [1,2,3,4]
fruits.each do |fruit|
  numbers.each do |n|
    #繰り返し処理が入れ子になっている場合は、一番内側のループだけが中断される
    next if n.even?
    puts "#{fruit},#{n}"
  end
end
