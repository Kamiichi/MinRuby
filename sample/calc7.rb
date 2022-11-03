answer = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
guess = gets.to_i

right = "あたりです！"
congrats = "おめでとうございます！"
wrong = "ハズレ！"
bigger = "それはちょっと大きすぎるよ！"
smaller = "それはちょっと小さすぎるよ！"
retry_message = "また遊んでね！！"

while answer != guess
    p(wrong)
    guess = gets.to_i
end
p(right)
p(congrats)