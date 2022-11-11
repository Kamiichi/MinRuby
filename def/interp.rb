require "minruby"

def evaluate(tree, genv, lenv)
    case tree[0]
    when "lit"
        tree[1]
    when "+"
        # env["plus_count"] = env["plus_count"] + 1
        evaluate(tree[1], genv, lenv) + evaluate(tree[2], genv, lenv)
    when "-"
        evaluate(tree[1], genv, lenv) - evaluate(tree[2], genv, lenv)
    when "*"
        evaluate(tree[1], genv, lenv) * evaluate(tree[2], envgenv, lenv)
    when "/"
        evaluate(tree[1], genv, lenv) / evaluate(tree[2], genv, lenv)
    when "%"
        evaluate(tree[1], genv, lenv) % evaluate(tree[2], genv, lenv)
    when "**"
        evaluate(tree[1], env) ** evaluate(tree[2], genv, lenv)
    when "=="
        evaluate(tree[1], genv, lenv) == evaluate(tree[2], genv, lenv)
    when "<"
        evaluate(tree[1], genv, lenv) < evaluate(tree[2], genv, lenv)
    when ">"
        evaluate(tree[1], genv, lenv) > evaluate(tree[2], genv, lenv)
    when "func_call"
        args = []
        i = 0
        while tree[i + 2]
            args[i] = evaluate(tree[i + 2], genv, lenv)
            i = i + 1
        end
        mhd = genv[tree[1]]
        if mhd[0] == "builtin"
            if tree[1] == "fizzbuzz"
                j = args[0]
                k = args[1] + 1
                while j < k
                    if j % 15 == 0
                        p("FizzBuzz")
                    elsif j % 5 == 0
                        p("Buzz")
                    elsif j % 3 == 0
                        p("Fizz")
                    else
                        p(j)
                    end
                    j = j + 1
                end
            else
            minruby_call(mhd[1], args)
            end
        else
            # 埋める
        end
    when "func_def"
        genv[tree[1]] = ["user_defined", tree[2], tree[3]]
    when "stmts"
        i = 1
        last = nil
        while tree[i] != nil
            last = evaluate(tree[i], genv, lenv)
            i = i + 1
        end
        last
    when "var_assign"
        lenv[tree[1]] = evaluate(tree[2], genv, lenv)
    when "var_ref"
        lenv[tree[1]]
    when "if"
        if evaluate(tree[1], genv, lenv)
            evaluate(tree[2], genv, lenv)
        else
            evaluate(tree[3], genv, lenv)
        end
    when "while"
        while evaluate(tree[1], genv, lenv)
            evaluate(tree[2], genv, lenv)
        end
    when "while2"
        evaluate(tree[1], genv, lenv)
        while evaluate(tree[1], genv, lenv)
            evaluate(tree[2], genv, lenv)
        end
    else
        p("この演算子は使えないよ")
        pp(tree[0])
    end
end

# 計算式の文字列を読み込む
str = minruby_load()

# 計算式の文字列を構文解析して計算の木にする
tree = minruby_parse(str)

# 計算の木を実行(計算)する
genv = { "p" => ["builtin", "p"], "fizzbuzz" => ["builtin", "fizzbuzz"]}
lenv = {}
evaluate(tree, genv, lenv)
