#!/bin/bash
set -e

# 既存の server.pid を削除
# 要変更：myapp → プロジェクト名
rm -f /my_app/tmp/pids/server.pid

# コンテナのプロセス実行
exec "$@"