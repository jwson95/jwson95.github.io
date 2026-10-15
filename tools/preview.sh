#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

# macOS 기본 Ruby 대신 설치된 Homebrew Ruby를 사용합니다.
for ruby_bin in /opt/homebrew/opt/ruby@3.4/bin /usr/local/opt/ruby@3.4/bin; do
  if [[ -x "$ruby_bin/ruby" ]]; then
    export PATH="$ruby_bin:$PATH"
    break
  fi
done

exec bundle exec jekyll serve --host 127.0.0.1 --livereload "$@"
