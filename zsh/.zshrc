# gpg signing
export GPG_TTY=$(tty)

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

export PATH="/usr/local/opt/ruby@3.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# vim alias for nvim
alias vim="nvim"

# for python3
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# ruby gems path
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/nikhilhenry/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# rustup
export PATH="/Users/nikhilhenry/.rustup/toolchains/nightly-x86_64-apple-darwin/bin:$PATH"

# for cpp programming
alias clang++="clang++ --std=c++20"

export PATH="/Users/nikhilhenry/.detaspace/bin:$PATH"
export PATH="/Users/nikhilhenry/.deno/bin:$PATH"

# Created by `pipx` on 2023-06-06 06:28:45
export PATH="$PATH:/Users/nikhilhenry/.local/bin"

# bun completions
[ -s "/Users/nikhilhenry/.bun/_bun" ] && source "/Users/nikhilhenry/.bun/_bun"

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

