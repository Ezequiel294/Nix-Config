{ config, pkgs, ... }:

{
    programs.sway = {
        enable = true;
        xwayland.enable = true;
        wrapperFeatures.gtk = true;
    };

    services.desktopManager.plasma6.enable = true;

    # Set default browser
    xdg.mime.defaultApplications = {
        "text/html" = "firefox-devedition.desktop";
        "x-scheme-handler/http" = "firefox-devedition.desktop";
        "x-scheme-handler/https" = "firefox-devedition.desktop";
    };
}
