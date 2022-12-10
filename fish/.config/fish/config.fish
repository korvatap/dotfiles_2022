if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function ..
    cd ..
end

function cd..
    cd ..
end

set -g theme_powerline_fonts no

set --universal --export theme_nerd_fonts yes
set --universal --export theme_color_scheme bobthefish

set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_node yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone America/Los_Angeles
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

# Git shortcuts
alias gitaall='git add --all'
alias gitdel='git branch --delete '
alias gitcom='git commit'
alias gitchk='git checkout'
alias gitcln='git clone'
alias gitreb='git rebase'
alias gitstat='git status'
alias gitstash='git stash'
alias gitstashp='git stash pop'
alias gitpull='git pull origin HEAD'
alias gitpf='git pull && git fetch'
alias gitpush='git push origin HEAD'
alias gitaacapf='git add -A && git commit --amend --no-edit && git push origin HEAD --force'
alias gitdev='git checkout development'
alias gitdevp='git checkout develop'

function gitct --description "gitct <branch name>"
  if not set -q argv[1]
    echo "The branch must be specified."
  else if not string length -q -- "$argv[1]"
    echo "The branch cannot be empty"
  end

  git checkout --track origin/$argv[1]
end

# kpf <service> <port>
function kpf --description "kpf <service> <port>"
  if not set -q argv[1]
    echo "The service must be specified."
  else if not string length -q -- "$argv[1]"
    echo "The service cannot be empty"
  end

  if not set -q argv[2]
    echo "The port must be specified."
  else if not string length -q -- "$argv[1]"
    echo "The port cannot be empty"
  end

  kubectl port-forward deployment/$argv[1] $argv[2]:80
end

# tw <function>
function tw --description "tw <window-name> <function>"
  if not set -q argv[1]
      echo "The window name must be specified."
  end

  if not set -q argv[2]
      echo "The function must be specified."
  end

  if not pgrep -f tmux > /dev/null
      tmux new-session -A -s main
  else
      tmux neww $argv[2..-1] && tmux rename-window $argv[1]  
  end

end

# nvimc <path>
function nvimc --description "nvimc <path>"
  if not set -q argv[1]
      nvim ~/.config/nvim/init.lua
  else
      nvim ~/.config/nvim/$argv[1]
  end
end

