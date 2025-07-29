{ config, pkgs, ... }:

{
    programs = {
        waybar.enable = true;
        sway = {
            enable = true;
            xwayland.enable = true;
            wrapperFeatures.gtk = true;
            wrapperFeatures.base = true;
            extraPackages = with pkgs; [
                kdePackages.xdg-desktop-portal-kde
                xdg-desktop-portal-wlr
                xdg-desktop-portal-gtk
                xdg-desktop-portal
                lxqt.lxqt-policykit
                brightnessctl
                wl-clipboard
                pwvucontrol
                autotiling
                swayidle
                swaylock
                kanshi
                slurp
                wofi
                grim
            ];
        };
    };

    # Theme
    programs.dconf.enable = true;

    # Default browser
    xdg.mime.defaultApplications = {
        "text/html" = "firefox-devedition.desktop";
        "x-scheme-handler/http" = "firefox-devedition.desktop";
        "x-scheme-handler/https" = "firefox-devedition.desktop";
    };
}
