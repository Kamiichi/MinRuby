tree = ["節1", ["節2", ["葉A"], ["葉B"]], ["節3", ["葉C"], ["葉D"]]]

#行きがけ
def iki_preorder(tree)
    p(tree[0])
    if tree[0].start_with?("節")
        iki_preorder(tree[1])
        iki_preorder(tree[2])
    end
end

#帰りがけ
def kaeri_preorder(tree)
    if tree[0].start_with?("節")
        kaeri_preorder(tree[1])
        kaeri_preorder(tree[2])
    end
    p(tree[0])
end

p("============================")
p("行きがけ")
iki_preorder(tree)
p("============================")

p("============================")
p("帰りがけ")
kaeri_preorder(tree)
p("============================")