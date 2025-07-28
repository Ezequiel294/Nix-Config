{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
     cantarell-fonts
     nerd-fonts.jetbrains-mono
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search packagename
  environment.systemPackages = with pkgs; [
     neovim 
     wget
     git
     git-credential-manager
     ghostty
     waybar
     swaylock
     swayidle
     wofi
     brightnessctl
     wl-clipboard
     grim
     slurp
     tmux
     fish
     firefox-devedition
     proton-pass
     protonvpn-gui
     keepassxc
     yazi
     lxappearance-gtk2
     kdePackages.qt6ct
     libsForQt5.qt5ct
     starship
     zoxide
     gtk4
     gtk3
     kdePackages.breeze
     libsForQt5.breeze-qt5
     libsForQt5.breeze-gtk
     pwvucontrol
     kdePackages.breeze-icons
     autotiling
     btop
     fastfetch
     eza
     bat
     freerdp
     insync
     kanshi
     lazygit
     lazydocker
     docker
     nodejs_24
     kdePackages.okular
     onlyoffice-desktopeditors
     kdePackages.partitionmanager
     qalculate-qt
     qbittorrent
     spotify
     vscode-fhs
     xdg-desktop-portal-wlr
     zip
     unzip
     python314
     gcc
     lxqt.lxqt-policykit
     networkmanagerapplet
     chromium
     dropbox
  ];
}
