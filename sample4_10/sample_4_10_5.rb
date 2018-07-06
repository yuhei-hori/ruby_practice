#redo
#３つの野菜に対して好きですか？と問いかけ、ランダムに「はい」または「いいえ」を答えるプログラム。ただし、「はい」と答えるまで何度も同じ処理を繰り返す
foods = ["ピーマン","トマト","セロリ"]
foods.each do |food|
  print "#{food}は好きですか？=>"
  #sampleは配列からランダムに１要素を取得するメソッド
  answer = ["はい","いいえ"].sample
  puts answer

  #はいと答えなければもう一度聞き直す
  #unless=>条件式が偽になった場合に実行
  redo unless answer == "はい"
end

teams = ["ベイスターズ","カープ","ジャイアンツ"]
count = 0
teams.each do |team|
  print "#{team}は好きですか？＝＞"
  #わざと「いいえ」しか答えないようにする
  answer = "いいえ"
  puts answer

  count += 1
  #やり直しは２回までにする
  redo if answer != "はい" && count < 2

  #カウントをリセット
  count = 0
end
