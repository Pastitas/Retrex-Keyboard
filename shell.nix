{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  # The Nix packages provided in the environment
  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
    # Whatever other packages are required
  ];
  shellHook = ''
    python -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
  '';
}
