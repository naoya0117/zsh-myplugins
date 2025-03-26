# git checkout
function gco() {
  local remote_flag=false
  local branch_name=""
  
  # オプションと引数を処理
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -r)
        remote_flag=true
        shift
        ;;
      *)
        branch_name="$1"
        shift
        ;;
    esac
  done
  
  if [ -z "$branch_name" ]; then
    # 引数がない場合はfzfでブランチを選択してチェックアウト
    local branches
    
    if $remote_flag; then
      # リモートブランチを含める
      branches=$(git branch -a | grep -v HEAD | sed 's/remotes\///')
    else
      # ローカルブランチのみ
      branches=$(git branch | grep -v HEAD)
    fi
    
    local selected_branch=$(echo "$branches" | fzf --preview 'git show --color=always {1}' | awk '{print $NF}')
    
    if [ -n "$selected_branch" ]; then
      # リモートブランチの場合は適切な形式に変換
      if [[ $selected_branch == origin/* ]]; then
        # origin/branch-name 形式からブランチ名を抽出
        local branch_only=$(echo "$selected_branch" | sed 's/^origin\///')
        git checkout -b "$branch_only" "$selected_branch"
      else
        git checkout "$selected_branch"
      fi
    fi
  else
    # 引数がある場合はそのブランチをチェックアウト
    git checkout "$branch_name"
  fi
}
