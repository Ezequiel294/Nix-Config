{ config, pkgs, ... }:

{
    environment.variables = {
        NIXOS_OZONE_WL="1";
        QT_QPA_PLATFORM="wayland";
        GDK_BACKEND="wayland";
        BROWSER="firefox-developer-edition";
        EDITOR="nvim";
        VISUAL="code";
        TERM="ghostty";
        GCM_CREDENTIAL_STORE="cache";
        GCM_CREDENTIAL_CACHE_OPTIONS="--timeout 300";
    };
}
