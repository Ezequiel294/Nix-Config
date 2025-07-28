{ config, pkgs, ... }:

{
    users.users.ezequiel = {
      isNormalUser = true;
      description = "Ezequiel Buck";
      extraGroups = [ "networkmanager" "wheel" "tss" "docker" ];
    };
}
