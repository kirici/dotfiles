# Aliases
if type -q bat
  alias cat 'bat -pp'
end

# TODO: split into separate files by command
# Shortcuts
abbr --add -g l "ls -vAhl --group-directories-first"
abbr --add -g c "clear"
abbr --add -g tree "tree -C --dirsfirst"
abbr --add -g gst "git status"
abbr --add -g gsw "git switch"
abbr --add -g gaa "git add --all ."
abbr --add -g gd "git diff"
abbr --add -g gds "git diff --staged"
abbr --add -g gcmsg "git commit --gpg-sign --message"
abbr --add -g ghist "git log --follow -p -U0 --ignore-all-space"
abbr --add -g ghistt "git log --follow -p -U0 --ignore-all-space --ext-diff"
abbr --add -g gla "git log --graph --all"
abbr --add -g glo "git log --oneline"
abbr --add -g gloa "git log --oneline --all"
abbr --add -g gloga "git log --oneline --graph --all"
abbr --add -g glp "git log --graph --pretty='format:%C(red)%h%C(reset)%C(auto)% D %C(reset)%C(normal)%C(bold)%s%C(reset) %C(reset)%C(cyan bold)<%an> %C(reset)%C(green)(%as)%C(reset)'"
abbr --add -g glps "git log --graph --pretty='format:%C(red)%h%C(reset)%C(auto)% D %C(reset)%C(normal)%C(bold)%s%C(reset) %C(reset)%C(cyan bold)<%an> %C(reset)%C(green)(%as)%C(reset)%n' --stat=80"
abbr --add -g glpf "git log --graph --pretty='format:%C(red)%h%C(reset)%C(auto)% D %C(reset)%C(normal)%C(bold)%s%C(reset) %C(reset)%C(cyan bold)<%an> %C(reset)%C(green)(%as)%C(reset)' --first-parent"
abbr --add -g glpa "git log --graph --pretty='format:%C(red)%h%C(reset)%C(auto)% D %C(reset)%C(normal)%C(bold)%s%C(reset) %C(reset)%C(cyan bold)<%an> %C(reset)%C(green)(%as)%C(reset)' --all"
abbr --add -g glpaf "git log --graph --pretty='format:%C(red)%h%C(reset)%C(auto)% D %C(reset)%C(normal)%C(bold)%s%C(reset) %C(reset)%C(cyan bold)<%an> %C(reset)%C(green)(%as)%C(reset)' --all --first-parent"

if type -q fzf
  abbr --add -g cdf "cd (fzf --walker=dir)"
end

if type -q kubectl
  abbr --add -g k "kubectl"
end

if type -q jj
  abbr --add -g jjla "jj log -r 'all()'"
end

if type -q eza
  abbr --add -g ea "eza -alo --no-permissions --group-directories-first --icons auto"
  abbr --add -g ean "eza -alo --no-permissions --group-directories-first --icons auto -r -s new"
  abbr --add -g eas "eza -alo --no-permissions --group-directories-first --icons auto -r -s size"
end
