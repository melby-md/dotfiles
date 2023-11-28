umask 077

export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/rc.py
export SQLITE_HISTORY="$XDG_DATA_HOME"/sqlite_history
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

export MANPAGER=less
export _JAVA_AWT_WM_NONREPARENTING=1
export GDK_BACKEND=wayland
export SDL_VIDEODRIVER=wayland

export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local

export PATH="$PATH:$HOME/bin:$GOPATH/bin:$HOME/.local/bin"

if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

(dumpkeys | grep keymaps; printf 'keycode 58 = Escape\nkeycode 1 = Caps_Lock\n') | doas loadkeys
