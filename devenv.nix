{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = with pkgs; [
    yt-dlp
    ffmpeg
    imagemagick
  ];
}

