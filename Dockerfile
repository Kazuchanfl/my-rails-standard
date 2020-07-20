# ベース・イメージ
FROM ruby:2.5

# 依存ライブラリの用意
RUN apt-get update -qq && apt-get install -y nodejs

# プロジェクト名（要変更：my_app → プロジェクト名）
ENV PROJECT_NAME my_app

# プロジェクトディレクトリの作成・移動
RUN mkdir /$PROJECT_NAME
ENV APP_ROOT /$PROJECT_NAME
WORKDIR $APP_ROOT

# Gemの用意
COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
COPY . $APP_ROOT

# エントリポイントの用意（コンテナ実行時に呼び出す）
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

# 起動
CMD [ "rails", "server", "-b", "0.0.0.0" ]
