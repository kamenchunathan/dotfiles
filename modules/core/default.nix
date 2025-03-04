{
  inputs,
  ...
}:

{
  imports = [
    ./boot.nix
    ./fonts.nix
    ./hardware.nix
    ./network.nix
    ./nh.nix
    ./packages.nix
    ./services.nix
    ./starship.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
    ./virtualisation.nix
    ./xdg.nix
    inputs.stylix.nixosModules.stylix
  ];
}
