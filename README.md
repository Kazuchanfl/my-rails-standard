# Rails開発環境標準化
Rails 開発のテンプレ的なもの

## 起動方法
1. このリポジトリをクローン
```bash
git clone git@github.com:Kazuchanfl/my-rails-standard.git
```

2. コンテナをビルド
```bash
docker-compose build
```

3. コンテナを再起動
```
docker-compose restart
```

4. コンテナに入る
```
docker exec -it my_app bash
```

以下はコンテナ内で

5. DB作成
```bash
bundle exec rake db:create
```

6. マイグレーション
```bash
bundle exec rails db:migrate RAILS_ENV=development
```

[localhost:3000](http://localhost:3000)で動く

7. 手動で Rails new する（今後修正予定）

7.1. コンテナに入る
```bash
docker-compose run app bash
```

7.2. rails newする
```bash
bundle exec rails new .
```
- 全ての質問に `n` を入力

## [WIP]アプリ名の変更方法

## 運用方法
[git-flow](https://tracpath.com/bootcamp/learning_git_git_flow.html) に準拠

1. development ブランチ最新化
2. development ブランチから relase ブランチ作成
3. relase ブランチを masterブランチにマージ
4. masterブランチにバージョンをタグづけ
5. master ブランチを development ブランチにマージ

※ 3でmasterへマージ後に緊急で修正を加える場合、

6. master ブランチから hotfix ブランチ作成
7. hotfix ブランチを master ブランチにマージ
8. masterブランチにバージョンをタグづけ（x.x.1 のように）
9. master ブランチを development ブランチにマージ
