# adic — Zsh Alias Control Panel

`adic` is a lightweight CLI tool that lets you **view, search, and interact with your Zsh aliases** in a structured, readable way.

It acts like a mini command palette for your terminal.

---

## ✨ Features

* 📋 View all aliases in a clean table
* 🔎 Search aliases by name or command
* ⚡ Interactive mode using `fzf`
* 🎨 Rich terminal UI
* 🧠 Simple, zero-overhead design (reads directly from Zsh)

---

## 📦 Requirements

Make sure you have:

* `python3`
* [`zsh`](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* [`rich`](https://github.com/textualize/rich)
* [`fzf`](https://github.com/junegunn/fzf)
* [`starship`](https://github.com/starship/starship)

## 🚀 Installation

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/adic.git
cd adic
```

---

### 2. Make script executable

```bash
chmod +x adic
```

---

### 3. Move to PATH (recommended)

```bash
mv adic ~/.local/bin/
```

Make sure `~/.local/bin` is in your PATH:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

---

## 🧪 Usage

### Show all aliases (default)

```bash
adic
```

---

### Search aliases

```bash
adic docker
adic python
adic git
```

---

### Interactive mode (fzf)

```bash
adic i
```

---

## 📁 Alias Source

`adic` reads aliases directly from your Zsh environment using:

```bash
zsh -lc alias
```

So it automatically reflects everything defined in:

* `~/.zshrc`
* sourced alias files (e.g. `~/.config/zsh/aliases.zsh`)
* Oh My Zsh plugins

---

## ➕ How to Add New Aliases

You can add aliases in one of the following places:

---

### Option 1 — Directly in `.zshrc` (simple)

```bash
alias gs='git status'
alias gp='git push'
```

Then reload:

```bash
source ~/.zshrc
```

---

### Option 2 — Recommended (clean setup)

Use a dedicated file:

```bash
~/.config/zsh/aliases.zsh
```

Example:

```bash
# ---------- Git ----------
alias gs='git status'
alias gp='git push'

# ---------- Docker ----------
alias d='docker'
alias dc='docker compose'
```

Then ensure your `.zshrc` includes:

```bash
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
```

---

## 🔄 Reload changes

After editing aliases:

```bash
source ~/.zshrc
```

or restart shell:

```bash
exec zsh
```

---

## 🧠 Design Philosophy

* Keep aliases simple and fast
* No runtime shell modification
* Read-only parsing from Zsh
* Execution only happens in explicit interactive mode

---

## ⚠️ Notes

* `adic` does not modify your system
* It only reads aliases from Zsh
* Execution in interactive mode runs commands via `zsh -lc`

---

## 📌 Example Output

```text
Zsh Alias Control Panel

┏━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ Alias  ┃ Command                   ┃
┣━━━━━━━━╋━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
┃ gs     ┃ git status                ┃
┃ gp     ┃ git push                  ┃
┃ d      ┃ docker                    ┃
┗━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

---

## 🚀 Future Ideas

* fuzzy preview pane
* alias grouping by project
* execution history
* alias explanation mode

---

