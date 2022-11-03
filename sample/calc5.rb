answer = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
guess = gets.to_i

right = "あたり！"
wrong = "ハズレ！"
if guess == answer
    p(right)
else
    p(wrong)
end
