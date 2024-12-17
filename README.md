# superuser.fish

A Fish shell plugin that prepends a superuser utility (`sudo` or `doas`) to the current command if not already present.

## 🚀 Install

Install using [fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install ignamartinoli/superuser.fish
```

# 🔧 Usage

Just bind the `superuser` function in your `config.fish` to a key:

```fish
bind \cS superuser
```
