{ config, pkgs, lib, ... }:

{
    boot = {
        plymouth.enable = false;

        loader = {
            systemd-boot.enable = true;
            efi.efiSysMountPoint = "/boot";
            efi.canTouchEfiVariables = true;
            systemd-boot.xbootldrMountPoint = "/efi";

            grub = {
                enable = false;
            #     devices = [ "nodev" ];
            #     efiSupport = true;
            #     useOSProber = true;
            #     gfxmodeEfi = "1920x1440";
            #     splashImage = null;
            #     configurationLimit = 5;
            #     theme = "${pkgs.pkgs.kdePackages.breeze-grub}/grub/themes/breeze";
            };
        };
    };
}
