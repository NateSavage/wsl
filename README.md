### Get my dev environment on any windows machine in about 10 minutes!
-----
1. Get yourself the NixOS distribution for Windows Subsystem for Linux here https://github.com/nix-community/NixOS-WSL.
2. Replace the contents of `/etc/nixos` inside your WSL instance with the contents of this repo to install my user and set it as default.
   - `sudo rm -r /etc/nixos/*` and then `sudo git clone https://github.com/NateSavage/wsl /etc/nixos`
4. Put your own ssh keys inside `~/.ssh`, or generate fresh keys with `ssh-keygen -t ed25519 -C "your_email@somewhere.com"`.
   - The private public keypair should be named `id_ed25519` and `id_ed25519.pub`.
5. run `sudo nixos-rebuild switch --flake /etc/nixos` to download all dependencies, build the OS configuration, and switch over to it.
6. optionally replace the timezone in `/etc/nixos/flake.nix` with your actual timezone.
-----
### Most Important Included Packages
|     Tool     | Command |
|     :---:    |  :---:  |
| file browser | [yazi](https://github.com/sxyazi/yazi) (also aliased to fd) 
| editor       | [nvim](https://neovim.io/) with my full neovim flake                                                              
| shell        | [ion](https://doc.redox-os.org/ion-manual/) + [starship](https://starship.rs/config/) for the prompt
| nix-helper   | [nh](https://github.com/nix-community/nh)                                                                         

-----

Someday I'll get around to adding an option to the module to set the name for installed user so forking this flake is trivial.
