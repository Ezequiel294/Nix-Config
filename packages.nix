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
      brightnessctl
      wl-clipboard

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

      # ───── Git & Dev Tools ─────
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
      kdePackages.okular
      onlyoffice-desktopeditors
      kdePackages.partitionmanager
      qalculate-qt

      # ───── Media ─────
      spotify
      qbittorrent

      # ───── Remote Access ─────
      freerdp

      # ───── Wayland UI / WM / Portal ─────
      ghostty
      waybar
      swaylock
      swayidle
      wofi
      grim
      slurp
      autotiling
      kanshi
      xdg-desktop-portal
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
      kdePackages.xdg-desktop-portal-kde
   ];
}
