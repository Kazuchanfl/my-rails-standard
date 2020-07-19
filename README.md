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
git clone git@github.com:Kazuchanfl/my-rails-standard.git
```

2. コンテナをビルド
```bash
docker-compose build
```

3. DB作成
```bash
docker-compose run app rake db:create
```

[localhost:3000](localhost:3000)で動く

## [WIP]アプリ名の変更方法