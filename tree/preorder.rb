# これが木構造を用いた一番簡単な再帰処理の書き方なのかな
# 引数に木を渡しちゃうのいいよね

def preorder(tree)
    p(tree[0]) # 各部分木でやりたい処理(今回は名前の出力をしたり、部分木を表示したりするよ)
    if tree[0].start_with?("節") # こっから再帰処理だね、かっこいい！左右の子要素を見ていくよ！
        preorder(tree[1])
        preorder(tree[2])
    end
end

tree_1 = ["節1", ["節2", ["葉A"], ["葉B"]], ["節3", ["葉C"], ["葉D"]]]

preorder(tree_1)