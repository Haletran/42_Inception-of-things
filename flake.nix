{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "vagrant-environment";

  buildInputs = [
    pkgs.vagrant
  ];

  # Optional: Additional environment setup
  shellHook = ''
    echo "Vagrant and VirtualBox are set up!"
    echo "Run 'vagrant --version' to confirm."
    vagrant plugin install vagrant-cachier
  '';
}