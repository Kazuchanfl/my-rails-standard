# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## 起動方法
1. このリポジトリをクローン
```bash
git clone git@github.com:Kazuchanfl/my-rails-standard.git -b feature/quickstart
```

2. コンテナをビルド
```bash
docker-compose build
```

3. DB作成
```bash
docker-compose run app rake db:create
```

[localhost:3000](http://localhost:3000)で動く

4. 手動で Rails new する（今後修正予定）

4.1. コンテナに入る
```bash
docker-compose run app bash
```

4.2. rails newする
```bash
bundle exec rails new .
```
- 全ての質問に `n` を入力

## [WIP]アプリ名の変更方法
