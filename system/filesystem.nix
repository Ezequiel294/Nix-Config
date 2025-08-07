{ config, pkgs, ... }:

{
    # Mount Windows ESP partition
    fileSystems."/boot" = {
        device = "/dev/nvme0n1p1";
        fsType = "vfat";
        options = [ "umask=0077" ]; # Secure permissions
    };

    fileSystems."/efi" = {
        device = "/dev/nvme0n1p5";
        fsType = "vfat";
    };

    swapDevices = [ {
        device = "/var/lib/swapfile";
        size = 8*1024;
    } ];
}
