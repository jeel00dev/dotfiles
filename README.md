# Dotfiles

---

## Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/jeel/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

---

### 2. Create symlinks

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
```

---

### Important

Before creating symlinks, remove existing configs:

```bash
rm -rf ~/.config/nvim
rm ~/.bashrc
rm ~/.gitconfig
```

---

## Automation (Optional)

You can create a setup script:

```bash
#!/bin/bash

ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
```

Run:

```bash
chmod +x setup.sh
./setup.sh
```

---

## License

MIT License
