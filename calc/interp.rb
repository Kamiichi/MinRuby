require "minruby"

# def sum(tree)
#     p(tree)
#     if tree[0] == "lit"
#         tree[1]
#     else # この場合はtree[0] == "+"
#         left = sum(tree[1])
#         right = sum(tree[2])
#         p(left + right)
#         left + right
#     end
# end

def evaluate(tree)
    case tree[0]
    when "lit"
        tree[1]
    when "+"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left + right
    when "-"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left - right
    when "*"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left * right
    when "/"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left / right
    when "%"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left % right
    when "**"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left ** right
    when "<"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left < right
    when "<"
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left > right
    when "=="
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left == right
    end
end

def max(tree)
    max = "数値がねえ"
    if tree[0] == "lit"
        tree[1]
    else
        left = max(tree[1])
        right = max(tree[2])
        if left > right
            max = left
        elsif left < right
            max = right
        else
            max = left # leftとrightどっちでもいいからleftを代入
        end
    end
end

# 計算式の文字列を読み込む
str = gets

# 計算式の文字列を構文解析して計算の木にする
tree = minruby_parse(str)

# 計算の木を実行(計算)する
answer = evaluate(tree)

# 計算の木の最大の数値を計算する
max_num = max(tree)

# 計算結果を出力する
p(answer)
p(max_num)