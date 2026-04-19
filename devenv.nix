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
    theme_args=""
    if [ -n "$1" ]; then
      theme_args="--theme $1"
    fi
    presenterm --config-file "${config.devenv.root}/config.yaml" $theme_args "${config.devenv.root}/embedded-systems-presentation.md"
  '';
}
