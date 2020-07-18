#!/bin/bash
set -e

# 既存の server.pid を削除
rm -f /myapp/tmp/pids/server.pid

# コンテナのプロセス実行
exec "$@"