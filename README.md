# my-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|string||
|user|references|null: false, foreign_key: true|
|like|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :like

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|post|references|null: false, foreign_key: true|

### Association
- has_many :users
- has_many :posts
