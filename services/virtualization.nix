{ config, pkgs, ... }:

{
    # Docker
    virtualisation.docker.enable = true;

    # Virtual filesystem
    services.gvfs.enable = true;
}
