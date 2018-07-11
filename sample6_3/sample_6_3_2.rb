text = "私の誕生日は1997年7月17日です。"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
puts m[1]
puts m[2]
puts m[3]
