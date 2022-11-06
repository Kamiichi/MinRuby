require "minruby"

def sum(tree)
    p(tree)
    if tree[0] == "lit"
        tree[1]
    else # この場合はtree[0] == "+"
        left = sum(tree[1])
        right = sum(tree[2])
        left + right
    end
end

# 計算式の文字列を読み込む
str = gets

# 計算式の文字列を構文解析して計算の木にする
tree = minruby_parse(str)
answer = sum(tree)

# 計算の木を実行(計算)する
answer = # ...

# 計算結果を出力する
p(answer)