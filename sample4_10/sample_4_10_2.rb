#"orange"と3の組み合わせが出たら全ての繰り返し処理を脱出するコード
fruits = ["apple","melon","orange"]
numbers = [1,2,3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit},#{n}"
      if fruit == "orange" && n == 3
        #全ての繰り返し処理を脱出するまた万が一タグが一致しない場合はエラーとなる
        throw :done
      end
    end
  end
end

#throwメソッドに第2引き数を渡すとcatchメソッドの戻り値になります
ret =
  catch :done do
    throw :done
  end
puts ret

ret_1 =
  catch :done do
    throw :done, 123
  end
puts ret_1
