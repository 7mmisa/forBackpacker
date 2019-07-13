## postsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|title|text|null: false|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
|country_id|references|null: false, foreign_key: true|
|image_id|string|

### Association
- has_many :comments
- belongs_to :country
- belongs_to :user
- has_many :images

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
- has_many :posts
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|

### Association
- belongs_to :posts
- belongs_to :users

## imageテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|post_id|references|null: false, foreign_key: true|

### Association
- belongs_to :posts
