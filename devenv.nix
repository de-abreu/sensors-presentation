{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = with pkgs; [

    # Utilities used in the presentation itself
    presenterm
    python3Packages.weasyprint

    # Utilities to download media and have it converted to different formats
    yt-dlp
    ffmpeg
    imagemagick
  ];

  scripts.run.exec = ''
    presenterm --config-file "${config.devenv.root}/config.yaml" "${config.devenv.root}/embedded-systems-presentation.md"
  '';
}
