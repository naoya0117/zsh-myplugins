# 基本的なGitコマンドのエイリアス
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit -v --amend'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias glg='git log --graph --oneline --decorate'

# よく使う操作の組み合わせ
alias gup='git pull --rebase'
alias grm='git rm'
alias gmv='git mv'

# ブランチ操作
alias gnb='git checkout -b'
alias gbb='git checkout -'

# スタッシュ操作
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstp='git stash pop'
alias gstl='git stash list'

# リセット操作
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# クリーンアップ操作
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'

# マージ・リベース
alias gm='git merge'
alias grb='git rebase'
alias grbm='git rebase master'
