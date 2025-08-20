# NixOS

![2025-08-20-16-40-32](https://github.com/user-attachments/assets/e5226f75-8ac7-4c3f-95f6-25b7af57970f)

# Dotfiles Installation

1. Clone dotfiles bare repo into home directory
```bash
git clone --bare https://github.com/Ezequiel294/dotfiles .dotfiles" {username}
```

2. Checkout the repo
```bash
git --git-dir=/home/{username}/.dotfiles/ --work-tree=/home/{username} checkout --force" {username}
```

3. Reboot the system
```bash
reboot
```

# FAQ

To manage the dotfile repository, you need to use dotfiles instead of Git.
```bash
dotfiles status
```
