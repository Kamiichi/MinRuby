def fib(x)
    if x <= 1
        x
    else
        fib(x - 1) + fib(x - 2)
    end
end

i = 0
while i < 10
    p(fib(i))
    i = i + 1
end