#splitに正規表現を渡すと、マッチした文字列に区切り文字にして文字列を分解し、配列を返します
number = "123,456-789"

#文字列で区切り文字を指定する
p number.split(",")

#正規表現を使ってカンマまたはハイフンを区切り文字に指定する
p number.split(/,\-/)
