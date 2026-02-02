{
  nixpkgs ? <nixpkgs>,
  pkgs ? import nixpkgs { },
}:

pkgs.mkShell {
  packages = with pkgs; [
    nixd
    nixfmt-rfc-style
    nodejs
  ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin:$PATH"
  '';
}
