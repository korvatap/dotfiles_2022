function fish_prompt
  echo -s ➜ (set_color blue) (set_color $fish_color_cwd) " " (prompt_pwd) (set_color normal) (fish_git_prompt) ' '
end
