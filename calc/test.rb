require "minruby"

tree = minruby_parse("1 + 2 * 4")
tree = minruby_parse("(1 + 2) / 3 * 4 * (56 / 7 + 8 + 9)")
pp(tree)

def add(x, y)
    p "addition!!"
    return x + y, x, y
end

answer, x, y = add(4, 2)
p(answer, x, y)