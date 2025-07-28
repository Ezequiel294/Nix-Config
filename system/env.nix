{ config, pkgs, ... }:

{
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
}
