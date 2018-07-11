#[], slice, slice!
#[]に正規表現を渡すと、文字列が正規表現にマッチした部分を抜き出します
text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/]

#マッチする部分が複数ある場合は、最初にマッチした文字列が返ります
text_1 = '123-4567 456-7890'
p text_1[/\d{3}-\d{4}/]

#キャプチャを使うと第2引数で何番目のキャプチャを取得するか指定できます
text_2 = '誕生日は1977年7月17日です'

#第2引数がないとマッチした部分全体が返る
p text_2[/(\d+)年(\d+)月(\d+)日/]

#第2引数を指定して３番目のキャプチャを取得する
p text_2[/(\d+)年(\d+)月(\d+)日/, 3]

#名前付きキャプチャであれば名前で指定することもできます。
#シンボルでキャプチャの名前を指定する
p text_2[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]

#文字列でキャプチャの名前を指定する
p text_2[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, "day"]

#sliceメソッドは[]のエイリアスメソッドです。
p text.slice(/\d{3}-\d{4}/)
p text_2.slice(/(\d+)年(\d+)月(\d+)日/, 3)

#slice!にするとマッチした部分が文字列から破壊的に取り除かれます。
p text.slice!(/\d{3}-\d{4}/)
p text
