{
  description = "CMOS Imaging Sensors: Digital Cameras for Astrophotography - Presentation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/4bd9165a9165d7b5e33ae57f3eecbcb28fb231c9";
    devenv.url = "github:cachix/devenv";
  };

  outputs = { self, nixpkgs, devenv, ... } @ inputs:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = devenv.lib.mkShell {
            inherit inputs pkgs;
            modules = [
              ({ pkgs, config, ... }: {
                packages = with pkgs; [
                  presenterm
                  python3Packages.weasyprint
                  yt-dlp
                  ffmpeg
                  imagemagick
                ];

                scripts.run.exec = ''
                  presenterm --config-file "${config.devenv.root}/config.yaml" "${config.devenv.root}/embedded-systems-presentation.md"
                '';
              })
            ];
          };
        }
      );

      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = {
            type = "app";
            program = toString (pkgs.writeShellScript "run-presentation" ''
              ${pkgs.presenterm}/bin/presenterm --config-file ${self}/config.yaml ${self}/embedded-systems-presentation.md
            '');
          };
        }
      );
    };
}
