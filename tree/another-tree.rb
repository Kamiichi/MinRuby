# 行きがけ、深さ優先探索かな
tree = ["節1", ["節2", ["葉A"], ["節3", ["葉B"], ["葉C"]]], ["葉D"]]

def preorder(tree)
    p(tree[0])
    if tree[0].start_with?("節")
        preorder(tree[1])
        preorder(tree[2])
    end
end

preorder(tree)