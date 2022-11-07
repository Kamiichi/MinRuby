# MinRuby
RubyでつくるRubyなんです

# 概要
ちょっとした出来心だったんです

# Sampleディレクトリ
かんたんなRubyのプログラムが入っているよ。
数当てゲームやらFizzBuzzなど
変数、四則演算、入出力、分岐、ループの制御構造

# Treeディレクトリ
式を見て、木の形のした時に
木の節、葉をたどるやり方がtree.rbに書かれている
再帰ってすばらしいね

# Calcディレクトリ
minrubyライブラリのminruby_parse関数の機能を借りて(パースってすごい。構文解析についても勉強したい)
入力の計算式を抽象構文木にパースし、四則演算をするinterp.rbがあるよ。
interp.rbには四則演算の他、剰余演算、累乗演算、比較演算の機能があるよ。
入力計算式を構文木にしたときの最大の数値を返すmax関数も載せられているよ。

# Varディレクトリ
minruby_parseの力を借りて構文解析をする。
tree[0] == var_assignは変数代入の実装
tree[0] == var_refは変数参照の実装
