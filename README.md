---

# CMOS Imaging Sensors: Digital Cameras for Astrophotography

> A presentation held at the Timișoara Polytechnic University in 21 of April, 2026

This repository contains the contents of the presentation and its complimentary flake and devenv configuration to replicate the tools and configuration used for the presentation itself.

## How to run

### Using [Nix Flakes](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html)

```bash
nix run github:de-abreu/sensors-presentation
```

### Using [devenv](https://devenv.sh/)

```bash
git clone github:de-abreu/sensors-presentation \
&& cd sensors-presentation \
&& devenv shell -- run
```
