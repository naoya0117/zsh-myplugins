#!/bin/env zsh

# ghqのディレクトリをfzfで選択して移動する関数
function g() {
  local query="$1"

  if [ -n "$query" ]; then
    # 引数がある場合はその文字列でfzfを実行
    local selected_dir=$(ghq list | fzf --filter "$query" | head -1)
  else
    # 引数がない場合はfzfのみ実行
    local selected_dir=$(ghq list | fzf --preview "cat $(ghq root)/{}/README.md")
  fi

  if [ -n "$selected_dir" ]; then
    cd $(ghq root)/$selected_dir
  fi
}
