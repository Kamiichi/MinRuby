start_message = "FizzBuzz行くよー！！"
stand_by_message = "Enterキーを押してください"
end_message = "お疲れさまでした！！"
Fizz = "Fizz"
Buzz = "Buzz"
FizzBuzz = "FizzBuzz"

p(start_message)
p(stand_by_message)
none = gets

i = 1
while i <= 15
    if i % 15 == 0
        p(FizzBuzz)
    elsif i % 5 == 0
        p(Buzz)
    elsif i % 3 == 0
        p(Fizz)
    else
        p(i)
    end
    i += 1 
end

p(end_message)