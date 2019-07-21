# README
# DB設計
This README would normally document whatever steps are necessary to get the
application up and running.
## usersテーブル
　
Things you may want to cover:
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|email|string|null: false|
* Ruby version
### Association
- has_many :groups, through: :members
- has_many :members
- has_many :messages

* System dependencies
## groupsテーブル

* Configuration
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

* Database creation
### Association
- has_many :members
- has_many :messages
- has_many :users, through: :members

* Database initialization
## membersテーブル

* How to run the test suite
|Column|Type|Options|
|------|----|-------|
|group_id|references|null: false, index: true, foreign_key: true|
|user_id|references|null: false, index: true, foreign_key: true|

* Services (job queues, cache servers, search engines, etc.)
### Association
- belongs_to :group
- belongs_to :user

* Deployment instructions
## messagesテーブル

* ...
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
