# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "記事１", body: "記事１の本文", category: "日々")
Post.create(title: "記事２", body: "記事２の本文", category: "キャンプ")
Post.create(title: "記事３", body: "記事３の本文", category: "未整理")
