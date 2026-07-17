{
  description = "NixOS-WSL configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    user-nates = {
      url = "github:NateSavage/nixos-user";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixos-wsl, user-nates, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        nixos-wsl.nixosModules.default
        user-nates.nixosModules.headless

        {
          wsl.enable = true;
          wsl.defaultUser = "nates";
          system.stateVersion = "26.05";
	      time.timeZone = "America/New_York";
        }
      ];
    };
  };
}
