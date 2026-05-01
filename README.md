---

# CMOS Imaging Sensors: Digital Cameras for Astrophotography

> A presentation held at the Timișoara Polytechnic University in 21 of April,
> 2026

This repository hosts the contents of the presentation and its complimentary
flake configuration to replicate the tools and configuration used for the
presentation itself.

> [!NOTE]
>
> You can have a sense (with no videos, transitions, pauses nor interactivity)
> of how the presentation would appear by looking at its
> [exported pdf version](https://raw.githubusercontent.com/de-abreu/sensors-presentation/refs/heads/main/embedded-systems-presentation.pdf).

## How to run

### Using Nix Flakes

With [nix installed](https://nixos.org/download/) and
[flakes enabled](https://nixos.wiki/wiki/flakes), execute the following commands
in your terminal:

```bash
git clone https://github.com/de-abreu/sensors-presentation.git
cd sensors-presentation
nix develop
run-presentation
```

You might also setup presenterm options as arguments:

```bash
run-presentation --theme gruvbox-dark
```

> [!NOTE]
>
> For more information on presenterm options, check `presenterm --help`

### Using whichever package manager is supported by your distribution

These are the dependencies of this project, for you to install however you see
fit.

#### Obligatory

| Package    | Version |
| :--------- | :------ |
| presenterm | 0.15.1  |

#### Optional

If you would like to
[export pdfs of the presentation](https://mfontanini.github.io/presenterm/features/exports.html?highlight=export#exporting-presentations)

| Package    | Version |
| :--------- | :------ |
| python     | 3.11.15 |
| weasyprint | 68.0    |

#### Cloning the repository and launching the presentation

```bash
git clone https://github.com/de-abreu/sensors-presentation.git
cd sensors-presentation
presenterm --config-file config.yaml presentation.md
```
