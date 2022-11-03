# 葉
leaf_a = ["葉A"]
leaf_b = ["葉B"]
leaf_c = ["葉C"]
leaf_d = ["葉D"]

# 節
node_2 = ["節2", leaf_a, leaf_b]
node_3 = ["節3", leaf_c, leaf_d]
node_1 = ["節1", node_2, node_3]

# 根を見る
p(node_1[0])

# 左側の部分木を見る
node_2 = node_1[1]
p(node_2)