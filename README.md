# Category based nix configurations with personal awesome-rust
 This is my personal nix configuration files for nixos, linux, macos, nixos-on-wsl and nix-on-droid with personal awesome-rust.

## Features

## Add/remove new packages
When you suggust new packages, you should care about
- Open source
- Actively maintained (e.g. not archived, last commit was a year ago)
- If package includes non-memory-safe languages or tauri/gtk3 base software, there should be no alternative that pure rust package
- If source available on github, confirm that it got over 100 stars(except some categories and cosmic packages)

Packages that do not meet these criteria will be removed.

## TODO
- [ ] Configure eww
- [ ] Configure dconf and plasma-module
- [ ] Configure impermanence
- [ ] Configure macchina
- [ ] Configure pfetch-rs
- [ ] Configure shell greeting
- [ ] Configure apparmor
- [ ] Make firefox settings completely declarative
- [ ] Make flake package excludable
- [ ] Make `nix flake show` work
- [ ] Make template usable

## Thanks to
- https://github.com/MrOtherGuy/firefox-csshacks : My librewolf config came from here
