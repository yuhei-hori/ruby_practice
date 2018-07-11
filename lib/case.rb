def charge(age)
  case age
  #0歳から5歳までの場合
  when 0..5
    puts "0"
  #6歳から12歳までの場合
  when 6..12
    puts "300"
  #13歳から18歳までの場合
  when 13..18
    puts "600"
  #それ以外の場合
  else
    puts "1000"
  end
end
puts  charge(3)
puts  charge(12)
puts  charge(16)
puts  charge(25)
