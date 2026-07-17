### Get my dev environment on any windows machine in about 10 minutes!
-----
1. Get yourself the NixOS distribution for Windows Subsystem for Linux by following the instructions here https://github.com/nix-community/NixOS-WSL.
2. Replace the contents of `/etc/nixos` inside your WSL instance.
   - `sudo rm -r /etc/nixos/*` and then `sudo git clone https://github.com/NateSavage/wsl /etc/nixos`.
3.  Tell NixOS to download all dependencies, build the OS configuration, and switch over to it.
   - `sudo nixos-rebuild switch --flake /etc/nixos`
4. Use your own SSH keys, mine won't be included 😛
   - Generate fresh keys with `ssh-keygen -t ed25519 -C "your_email@somewhere.com"` or put your own ssh keys inside `~/.ssh`.
   - The private public keypair should be named `id_ed25519` and `id_ed25519.pub`.
5. optionally replace the timezone in `/etc/nixos/flake.nix` with your actual timezone.
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
