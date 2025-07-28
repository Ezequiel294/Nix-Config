# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
    ];

  # Bootloader.
  boot = {
    plymouth.enable = false;
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
	devices = [ "nodev" ];
	efiSupport = true;
	useOSProber = true;
	gfxmodeEfi = "1920x1440";
	splashImage = null;
	configurationLimit = 5;
        theme = "${pkgs.pkgs.kdePackages.breeze-grub}/grub/themes/breeze";
      };
    };
  };

  # TPM2 configuration
  security.tpm2 = {
    enable = true;
    pkcs11.enable = true;  # expose /run/current-system/sw/lib/libtpm2_pkcs11.so
    tctiEnvironment.enable = true;  # TPM2TOOLS_TCTI and TPM2_PKCS11_TCTI env variables
  };

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "p14s"; # Define your hostname.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Costa_Rica";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_CR.UTF-8";
    LC_IDENTIFICATION = "es_CR.UTF-8";
    LC_MEASUREMENT = "es_CR.UTF-8";
    LC_MONETARY = "es_CR.UTF-8";
    LC_NAME = "es_CR.UTF-8";
    LC_NUMERIC = "es_CR.UTF-8";
    LC_PAPER = "es_CR.UTF-8";
    LC_TELEPHONE = "es_CR.UTF-8";
    LC_TIME = "es_CR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ezequiel = {
    isNormalUser = true;
    description = "Ezequiel Buck";
    extraGroups = [ "networkmanager" "wheel" "tss" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Log-in Manager
  services.displayManager.ly.enable = true;

  # Window Manager
  programs.sway = {
      enable = true;
      xwayland.enable = true;
      wrapperFeatures.gtk = true;
  };

  # Sound
  services.pipewire = {
      enable = true;
      audio.enable = true;
      pulse.enable = true;
      jack.enable = true;
      alsa.enable = true;
      wireplumber.enable = true;
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # Battery Options
  services.tlp.enable = true;
  services.tlp.settings = {
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "low-power";
      START_CHARGE_THRESH_BAT0 = 75;
      STOP_CHARGE_THRESH_BAT0 = 80;
  };

  # Set up polkit agent
  security.polkit.enable = true;

  # Environment Variables
  environment.variables = {
      NIXOS_OZONE_WL="1";
      QT_QPA_PLATFORM="wayland";
      QT_QPA_PLATFORMTHEME="qt5ct";
      GDK_BACKEND="wayland";
      GTK_THEME="Breeze-Dark";
      BROWSER="firefox-developer-edition";
      EDITOR="nvim";
      VISUAL="code";
      TERM="ghostty";
      GCM_CREDENTIAL_STORE="cache";
      GCM_CREDENTIAL_CACHE_OPTIONS="--timeout 300";
  };

  # Docker Virtualization
  virtualisation.docker.enable = true;

  # Applications Theme
  qt.enable = true;
  qt.platformTheme = "qt5ct";

  # Set default browser
  xdg.mime.defaultApplications = {
    "text/html" = "firefox-devedition.desktop";
    "x-scheme-handler/http" = "firefox-devedition.desktop";
    "x-scheme-handler/https" = "firefox-devedition.desktop";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}

