# README

# アプリ名
筋トレ好きよ集まれ💪

# 概要
## このアプリを作った意味
筋力トレーニングをしている方の情報共有アプリケーションです。私は筋力トレーニングを始めた際には何からやればいいや、どの種目をやればいいかなどわからない
ことが多く、その時にこのようなトレーニング種目の共有アプリケーションがあれば、こういうのをやったらいいんだなどとわかります。
上記のことからこの情報共有アプリケーションを作成致しました。
<br>
<br>

## このアプリケーションで出来る事
<br>
ユーザー登録
<br>
[![Image from Gyazo](https://i.gyazo.com/34383a22d647a66f2331a26c13073fa6.png)](https://gyazo.com/34383a22d647a66f2331a26c13073fa6) 
<br>
<br>
画像、部位を選んでの投稿機能
<br>

<br>
<br>
コメント機能
<br>

<br>
投稿一覧
<br>

<br>
<br>
投稿が4つ以上になると次のページへ遷移してみることができる
<br>
<br>

<br>



# 本番環境
https://individual-meapp.herokuapp.com/

テストアカウント
<br>
Nickname test
<br>
Email test@test
<br>
Password 000000
<br>
Password confirmation 000000



# 使用技術(開発環境)
macOS Catalina10.15.4
<br>
Ruby
<br>
Rails 5.0.7.2
<br>
Heroku
<br>
Haml/Sass

# 課題や今後実装したい機能
検索機能の実装をし、投稿の題名や部位に関するワードの一覧を表示させる機能
<br>
コメント機能の非同期通信

# ER図 

## DB設計
 Individual-app DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts
- has_many :comments
- has_many :parts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|title||null: false|
|text|text|||null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :images
- has_many :parts

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user|references|null: false, foreign_key: true|
|post|references|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user

## partsテーブル
|Column|Type|Options|
|------|----|-------|
|text|name|null: false|
|post|references|null: false, foreign_key: true|
### Association
- belongs_to :posts

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|string|image|null: false|
|post|references|null: false, foreign_key: true|
### Association
- belongs_to :post
