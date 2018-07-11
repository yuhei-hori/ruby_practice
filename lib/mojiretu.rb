# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don,t speak."!

#%Q! !はダブルクオートで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!

#%Q! !もダブルクオートで囲んだことと同じになる
aisatu = "Bye."
puts %Q!He said, "#{aisatu}"!

#?を区切りとして使う
puts %q?He said, "Don't speak."?

#{ }を区切り文字として使う
puts %q{He said, "Don't speak."}

a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列の作成するのに便利です。
TEXT

puts a 
