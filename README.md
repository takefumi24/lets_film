# README

# Name
- Fillppy

# Overview
- Fillppyはユーザー目線のレビューサイトであり、その日の「感情」に合わせて映画を探せる映画アプリです。
- 「感情」は全部で6項目あり、「恋したい」「笑いたい」「感動したい」「恐怖を感じたい」「勇気をもらいたい」「冒険したい」から選択できます
- 「映画」の投稿と「映画のレビュー」を投稿できます。
- 他ユーザーのレビューに対して「コメント」ができます。
- 「感情に紐づく映画のレビュー数」に応じて、「感情」が変わります。（DEMOにて詳細をご覧下さい)
- キーワード検索ができます。

# Intention
- 映画をもっと人々の生活に浸透させたいという強い思いがあり、作りました。
- 現状、映画を軸としたレビューサイトはありますが、ユーザーの視点を軸としたレビューサイトがないと考えたので作りました。

# Demo
**①最初にアカウントを作成し、新規登録/ログインを行います。(最初に必ずログインするように設定しております)**<br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 17 22 35" src="https://user-images.githubusercontent.com/60637518/77890880-19708500-72ab-11ea-98a4-46fc2519fc44.png"><br>
<br>
<br>
**②ユーザーは「映画投稿」を押すと観た映画の投稿を行う事ができます。**<br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 17 58 15" src="https://user-images.githubusercontent.com/60637518/77895444-c221e300-72b1-11ea-942b-4f5e4146f467.png"><br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 20 00 19" src="https://user-images.githubusercontent.com/60637518/77905412-2a2bf580-72c1-11ea-9d1d-5ca451c10b5e.png"><br>
<br>
<br>
**③ユーザーは、その日の気分で映画を探す事ができます。**<br>
<br>
<img width="1000" alt="スクリーンショット 2020-03-30 18 18 38" src="https://user-images.githubusercontent.com/60637518/77896294-0497ef80-72b3-11ea-94ff-6bbaf8525dee.png"><br>
<br>
<br>
**④観たい映画をクリックするとレビューを「投稿」または「閲覧」する事ができます。**<br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 20 07 06" src="https://user-images.githubusercontent.com/60637518/77905984-1fbe2b80-72c2-11ea-802d-52ca7e920ab6.png"><br>
<br>
<br>
**⑤他ユーザーのレビューに対してコメントができます。**<br>
<br>
<br>
<img width="400" alt="スクリーンショット 2020-03-30 20 10 07" src="https://user-images.githubusercontent.com/60637518/77907027-eb4b6f00-72c3-11ea-8424-2e6915198166.png">


# DB設計
# usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|

### Association
- has_many :reviews
- has_many :films
- has_many :comments

# filmsテーブル
|Column|Type|Options|
|------|----|-------|
|title|srting|
|text|string|
|user_id|references|
|review_id|references|
|image|text|
|many_feeling_id|integer|
|feeling_id|integer|

### Association
- has_many :reviews
- belongs_to :user
- belongs_to :feeling


# feelingsテーブル
|Column|Type|Options|
|------|----|-------|
|kind|text|

### Association
- has_many :reviews
- has_many :films

# reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|text|srting|
|user_id|integer|
|feeling_id|integer|
|film_id|integer|

### Association
- has_many :comments
- belongs_to :user
- belongs_to :film
- belongs_to :feeling

# commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|
|user_id|ireferences|
|review_id|references|
|film_id|references|

### Association
- belongs_to :review
- belongs_to :user
