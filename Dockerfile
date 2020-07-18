# ベース・イメージ
FROM ruby:2.5

# 依存ライブラリの用意
RUN apt-get update -qq && apt-get install -y nodejs yarn

# プロジェクト名（docker-compose.ymlで変更可能）
ARG projectName

# プロジェクトディレクトリの作成・移動
RUN mkdir /ENV
WORKDIR /${projectName}

# Gemの用意
COPY Gemfile /${projectName}/Gemfile
COPY Gemfile.lock /${projectName}/Gemfile.lock
RUN bundle install
COPY . /${projectName}

# エントリポイントの用意（コンテナ実行時に呼び出す）
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

# 起動
CMD [ "rails", "server", "-b", "0.0.0.0" ]
