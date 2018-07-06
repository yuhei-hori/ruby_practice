#添字を０以外の数値から開始させる
fruit = ['apple','orange','melon']

#eachで繰り返しつつ、１から始まる添字を取得する
fruit.each.with_index(1){|fruit, i| puts "#{i}: #{fruit}"}

#mapで処理しつつ、１０から始まる添字を取得する
fruit.map.with_index(10){|fruit, i| puts "#{i}: #{fruit}"}
