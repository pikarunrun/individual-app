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
<img src="https://i.gyazo.com/51aa511684126e9ba4cff944362fb84f.png">
<br>
ログイン画面
<br>
<img src="https://i.gyazo.com/05d999afee0619f63518f379755d8d6b.png">
<br>
画像、部位を選んでの投稿機能
<br>
<img src="https://i.gyazo.com/4cfd8c20b5352f19718644220ff2efee.png">
<br>
<br>
コメント機能
<br>
<img src="https://i.gyazo.com/6565ff0635293c096737f2fef0d18138.png">
<br>
投稿一覧
<br>
<img src="https://i.gyazo.com/7db2ec3afc58940536c7ce4fd39ee9bb.jpg">
<br>
<br>
投稿が4つ以上になると次のページへ遷移してみることができる
<br>
<br>
<img src="https://i.gyazo.com/de0cfc247dc92baefa725472604b273d.png">
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
<img src="https://i.gyazo.com/465fd416b9b760c6050912fdf2f2f4f4.png">
<br>

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
