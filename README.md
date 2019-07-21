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
 

### Association
- has_many :groups, through: :members
- has_many :members
- has_many :messages


## groupsテーブル


|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :members
- has_many :messages
- has_many :users, through: :members


## membersテーブル


|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false, index: true, foreign_key: true|
|user_id|integer|null: false, index: true, foreign_key: true|


### Association
- belongs_to :group
- belongs_to :user


## messagesテーブル


|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

