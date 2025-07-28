{ config, pkgs, ... }:

{
    programs.sway = {
        enable = true;
        xwayland.enable = true;
        wrapperFeatures.gtk = true;
    };

    # Applications Theme
    qt.enable = true;
    qt.platformTheme = "qt5ct";

    # Set default browser
    xdg.mime.defaultApplications = {
        "text/html" = "firefox-devedition.desktop";
        "x-scheme-handler/http" = "firefox-devedition.desktop";
        "x-scheme-handler/https" = "firefox-devedition.desktop";
    };
}
