{ config, pkgs, ... }:

{
    # Set your time zone.
    time = {
        timeZone = "America/Costa_Rica";
        hardwareClockInLocalTime = true;
    };

    # Select internationalisation properties.
    i18n = {
        defaultLocale = "en_US.UTF-8";
        extraLocaleSettings = {
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
    };

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };
}
