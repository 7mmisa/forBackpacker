# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.create!(
  [
    {name: '韓国', continent_id: 1},
    {name: '中国', continent_id: 1},
    {name: '台湾', continent_id: 1},
    {name: 'ベトナム', continent_id: 2},
    {name: 'シンガポール', continent_id: 2},
    {name: 'タイ', continent_id: 2},
    {name: 'イギリス', continent_id: 3},
    {name: 'フランス', continent_id: 3},
    {name: 'ドイツ', continent_id: 3},
    {name: 'オーストリア', continent_id: 3},
    {name: 'ハンガリー', continent_id: 3},
    {name: 'チェコ', continent_id: 3},
    {name: 'スペイン', continent_id: 3},
    {name: 'ポルトガル', continent_id: 3},
    {name: 'アイスランド', continent_id: 4},
    {name: 'カナダ', continent_id: 5},
    {name: 'メキシコ', continent_id: 6},
    {name: 'オーストラリア', continent_id: 7},
    {name: 'エジプト', continent_id: 8},
    {name: 'コートジボワール', continent_id: 9}
  ]
)