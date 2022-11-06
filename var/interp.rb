require "minruby"

def evaluate(tree)
    case tree[0]
    when "lit"
        tree[1]
    when "+"
        evaluate(tree[1]) + evaluate(tree[2])
    when "-"
        evaluate(tree[1]) - evaluate(tree[2])
    when "*"
        evaluate(tree[1]) * evaluate(tree[2])
    when "/"
        evaluate(tree[1]) / evaluate(tree[2])
    when "func_call"
        p(evaluate(tree[2]))
    when "stmts"
        i = 1
        last = nil
        while tree[i] != nil
            last = evaluate(tree[i])
            i = i + 1
        end
        last
    end
end

# 計算式の文字列を読み込む
str = minruby_load()

# 計算式の文字列を構文解析して計算の木にする
tree = minruby_parse(str)

# 計算の木を実行(計算)する
answer = evaluate(tree)
