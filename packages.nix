{ config, pkgs, ... }:

{
   fonts.packages = with pkgs; [
         cantarell-fonts
         nerd-fonts.jetbrains-mono
   ];

   # List packages installed in system profile. To search, run:
   # $ nix search packagename
   environment.systemPackages = with pkgs; [
      # ───── System Utilities ─────
      wget
      zip
      unzip
      networkmanagerapplet

      # ───── Shell & Terminal ─────
      fish
      starship
      zoxide
      tmux
      fastfetch
      btop
      eza
      bat

      # ───── Text Editors / IDEs ─────
      neovim
      vscode-fhs

      # ───── Dev Tools ─────
      git
      git-credential-manager
      nodejs_24
      lazygit
      lazydocker
      gcc
      python314

      # ───── Browsers & Web ─────
      firefox-devedition
      chromium

      # ───── Password Managers & Security ─────
      proton-pass
      protonvpn-gui
      keepassxc

      # ───── File Managers ─────
      yazi
      dropbox
      insync

      # ───── Utilities ─────
      ghostty
      kdePackages.okular
      onlyoffice-desktopeditors
      kdePackages.partitionmanager
      qalculate-qt
      libreoffice

      # ───── Media ─────
      spotify
      qbittorrent

      # ───── Appearance / Themes ─────
      gtk3
      gtk4
      kdePackages.qt6ct
      libsForQt5.qt5ct
      lxappearance-gtk2
      kdePackages.breeze
      libsForQt5.breeze-qt5
      libsForQt5.breeze-gtk
      adwaita-icon-theme
      kdePackages.breeze-icons
   ];
}
