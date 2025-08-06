{ config, pkgs, lib, ... }:
let
    sources = import ./nix/sources.nix;
    lanzaboote = import sources.lanzaboote;
in

{
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

    # Secure boot
    imports = [ lanzaboote.nixosModules.lanzaboote ];

    environment.systemPackages = [
        # For debugging and troubleshooting Secure Boot.
        pkgs.sbctl
    ];

    boot.lanzaboote = {
        enable = true;
        pkiBundle = "/var/lib/sbctl";
    };
}
