# README
# Name
## ・[Fillppy](http://18.180.217.204/)

# Overview
- **Fillppyはユーザー目線のレビューサイトであり、その日の「感情」に合わせて映画を探せる映画アプリです。**
- 「感情」は全部で6項目あり、「恋したい」「笑いたい」「感動したい」「恐怖を感じたい」「勇気をもらいたい」「冒険したい」から選択できます。(DEMO③参照)
- 「映画」の登録と「映画のレビュー」を投稿できます。
- 他ユーザーのレビューに対して「コメント」ができます。
- 映画に対するレビューを投稿する際、6つの感情から選択して、レビューを投稿できます。
- **映画のタイトルごとに６つの感情を集計し、最も多い「感情」の項目に映画が随時移動します。(DEMO⑧参照)**

# Link
http://18.180.217.204/<br>
- 上記リンクから下記のテストユーザーにてログインできます。

# Test User
- ユーザーネーム:DEMO
- メールアドレス:demo@gmail.com
- パスワード：aaaaaa

# Intention
- 映画をもっと人々の生活に浸透させたいという強い思いがあったので作りました。
- 現状、映画を軸としたレビューサイトはありますが、ユーザーの視点を軸としたレビューサイトがないと考えたので作りました。

# Demo
**①最初にアカウントを作成し、新規登録/ログインを行います。(最初に必ずログインするように設定しております)**<br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 17 22 35" src="https://user-images.githubusercontent.com/60637518/77890880-19708500-72ab-11ea-98a4-46fc2519fc44.png"><br>
<br>
<br>
**②ユーザーはヘッダーの「映画投稿」を押すと観た映画の登録を行う事ができます。**<br>
<br>
<img width="700" alt="スクリーンショット 2020-04-01 16 55 09" src="https://user-images.githubusercontent.com/60637518/78112758-a5181c00-7439-11ea-9cb4-bb64b2aab5b1.png"><br>
<br>
<img width="500" alt="スクリーンショット 2020-03-30 20 00 19" src="https://user-images.githubusercontent.com/60637518/77905412-2a2bf580-72c1-11ea-9d1d-5ca451c10b5e.png"><br>
<br>
<br>
**③投稿した映画は、ヘッダーの「投稿映画一覧」からご覧頂けます。**<br>
<br>
![c6714de083963b02c0ae3b3f2e277beb (1)](https://user-images.githubusercontent.com/60637518/78112352-13a8aa00-7439-11ea-8a30-f626fe238206.gif)<br>
<br>
**④ユーザーは、その日の気分で映画を探す事ができます。**<br>
<br>
<img width="1000" alt="スクリーンショット 2020-03-30 18 18 38" src="https://user-images.githubusercontent.com/60637518/77896294-0497ef80-72b3-11ea-94ff-6bbaf8525dee.png"><br>
<br>
<br>
**⑤観たい映画をクリックするとレビューを「投稿」と「閲覧」する事ができます。**<br>
<br>
<img width="500" alt="スクリーンショット 2020-04-01 18 26 41" src="https://user-images.githubusercontent.com/60637518/78121459-6046b200-7446-11ea-9834-d157766990bc.png">
<br>
<br>
**⑥他ユーザーのレビューに対してコメントができます。**<br>
<br>
<img width="400" alt="スクリーンショット 2020-03-30 20 10 07" src="https://user-images.githubusercontent.com/60637518/77907027-eb4b6f00-72c3-11ea-8424-2e6915198166.png"><br>
<br>
<br>
**⑦ユーザーは映画のレビューを投稿する際、６つの感情のいずれか1つを選択します。**<br>
<br>
<img width="424" alt="スクリーンショット 2020-04-01 17 16 54" src="https://user-images.githubusercontent.com/60637518/78114687-9ed76f00-743c-11ea-9158-0c84d26fd8a3.png"><br>
<br>
<br>
**⑧映画のタイトルごとに６つの感情を集計し、最も多い「感情」の項目に映画が随時移動します。**<br>
<br>
（例）映画タイトル【永遠のゼロ】が感情項目「感動したい」から「勇気をもらいたい」に移動します。<br>
<br>
[![Image from Gyazo](https://i.gyazo.com/5d580e4bcc41663ac9cc7013f96dea02.gif)](https://gyazo.com/5d580e4bcc41663ac9cc7013f96dea02)<br>
<br>
　　　　　　　　　　　　　　　　　　　　　　　　**↓**<br>
<br>
[![Image from Gyazo](https://i.gyazo.com/c04597b38a2d6b60eb3f84f8639e58bb.gif)](https://gyazo.com/c04597b38a2d6b60eb3f84f8639e58bb)
<br>
<br>
# Development environment
- ruby2.5.1
- rails 5.2.4.1
- AWS

# Usage
$ git clone https://github.com/takefumi24/lets_film.git<br>
$ cd lets_film<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s<br>
→ http://localhost:3000




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
|user_id|references|optional: true|
|review_id|references|optional: true|
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
