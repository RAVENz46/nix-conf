NOM -> NixOsModule
Flake section -> PO: Package Only, PN: Package & NixOsModule
### ai-utils
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [ollama](https://github.com/ollama/ollama)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ol/ollama/package.nix)) | Yes | No | No | Get up and running with large language models locally |
| [tabby](https://github.com/TabbyML/tabby)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ta/tabby/package.nix)) | Yes | No | Yes | Self-hosted AI coding assistant |

### audio
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [pipewire](https://gitlab.freedesktop.org/pipewire/pipewire)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/libraries/pipewire/default.nix)) | Yes | No | No | Server and user space API to deal with multimedia pipelines |

### databases
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [influxdb](https://github.com/influxdata/influxdb)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/nosql/influxdb/default.nix)) | Yes | No | Yes | Open-source distributed time series database |
| [surrealdb](https://github.com/surrealdb/surrealdb)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/su/surrealdb/package.nix)) | Yes | PO | Yes | Scalable, distributed, collaborative, document-graph database, for the realtime web |

### desktop
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [alsa-utils](https://www.alsa-project.org/wiki/Main_Page)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/al/alsa-utils/package.nix)) | No | No | No | ALSA, the Advanced Linux Sound Architecture utils |
| [cosmic-applets](https://github.com/pop-os/cosmic-applets)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-applets/package.nix)) | No | PO | Yes | Applets for the COSMIC Desktop Environment |
| [cosmic-applibrary](https://github.com/pop-os/cosmic-applibrary)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-applibrary/package.nix)) | No | PO | Yes | Application Template for the COSMIC Desktop Environment |
| [cosmic-bg](https://github.com/pop-os/cosmic-bg)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-bg/package.nix)) | No | PO | Yes | Applies Background for the COSMIC Desktop Environment |
| [cosmic-comp](https://github.com/pop-os/cosmic-comp)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-comp/package.nix)) | No | PO | Yes | Compositor for the COSMIC Desktop Environment |
| [cosmic-greeter](https://github.com/pop-os/cosmic-greeter)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-greeter/package.nix)) | Yes | No | Yes | Greeter for the COSMIC Desktop Environment |
| [cosmic-icons](https://github.com/pop-os/cosmic-icons)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-icons/package.nix)) | No | PO | Yes | System76 Cosmic icon theme for Linux |
| [cosmic-launcher](https://github.com/pop-os/cosmic-launcher)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-launcher/package.nix)) | No | PO | Yes | Launcher for the COSMIC Desktop Environment |
| [cosmic-notifications](https://github.com/pop-os/cosmic-notifications)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-notifications/package.nix)) | No | PO | Yes | Notifications for the COSMIC Desktop Environment |
| [cosmic-osd](https://github.com/pop-os/cosmic-osd)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-osd/package.nix)) | No | PO | Yes | OSD for the COSMIC Desktop Environment |
| [cosmic-panel](https://github.com/pop-os/cosmic-panel)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-panel/package.nix)) | No | PO | Yes | Panel for the COSMIC Desktop Environment |
| [cosmic-randr](https://github.com/pop-os/cosmic-randr)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-panel/package.nix)) | No | No | Yes | Library and utility for displaying and configuring Wayland outputs |
| [cosmic-screenshot](https://github.com/pop-os/cosmic-screenshot)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-screenshot/package.nix)) | No | No | Yes | Screenshot tool for the COSMIC Desktop Environment |
| [cosmic-session](https://github.com/pop-os/cosmic-session)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-session/package.nix)) | No | PO | Yes | Session manager for the COSMIC desktop environment |
| [cosmic-settings](https://github.com/pop-os/cosmic-settings)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-settings/package.nix)) | No | PO | Yes | Settings for the COSMIC Desktop Environment |
| [cosmic-settings-daemon](https://github.com/pop-os/cosmic-settings-daemon)([noxpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-settings-daemon/package.nix)) | No | PO | Yes | Settings Daemon for the COSMIC Desktop Environment |
| [cosmic-workspaces-epoch](https://github.com/pop-os/cosmic-workspaces-epoch)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-workspaces-epoch/package.nix)) | No | No | Yes | Workspaces Epoch for the COSMIC Desktop Environment |
| [niri](https://github.com/YaLTeR/niri)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/niri/package.nix)) | No | PO | Yes | Scrollable-tiling Wayland compositor |
| [pop-launcher](https://github.com/pop-os/launcher)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/pop-launcher/default.nix)) | No | No | Yes | Modular IPC-based desktop launcher service |
| [swww](https://github.com/LGFae/swww)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/sw/swww/package.nix)) | No | PO | Yes | Efficient animated wallpaper daemon for wayland, controlled at runtime |

### localization
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [feather](https://github.com/feathericons/feather) | No | No | No |  Simply beautiful open-source icons |
| [inter](https://github.com/rsms/inter)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/data/fonts/inter/default.nix)) | No | No | No | Typeface specially designed for user interfaces |
| [nerdfonts](https://github.com/ryanoasis/nerd-fonts)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/data/fonts/nerdfonts/default.nix)) | No | No | No | Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts |
| [noto-fonts](https://fonts.google.com/noto)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/no/noto-fonts/package.nix)) | No | No | No | Beautiful and free fonts for many languages |

### misc
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [android-tools](https://github.com/nmeum/android-tools)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/android-tools/default.nix)) | Yes | No | No | Android SDK platform tools |
| [envision](https://gitlab.com/gabmus/envision)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/en/envision/package.nix)) | Yes | No | Yes | UI for building, configuring and running Monado, the open source OpenXR runtime (with build environment) |
| [garage](https://git.deuxfleurs.fr/Deuxfleurs/garage)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/filesystems/garage/default.nix)) | Yes | PO | Yes | S3-compatible object store for small self-hosted geo-distributed deployments |
| [kanata](https://github.com/jtroo/kanata)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/kanata/default.nix)) | Yes | No | Yes | Tool to improve keyboard comfort and usability with advanced customization |
| [lact](https://github.com/ilya-zlobintsev/LACT)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/lact/default.nix)) | No | No | Yes | Linux AMDGPU Controller |
| [mouse-actions](https://github.com/jersou/mouse-actions)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/mo/mouse-actions/package.nix)) | Yes | No | Yes | Execute commands from mouse events such as clicks/wheel on the side/corners of the screen, or drawing shapes |
| [rkvm](https://github.com/htrefil/rkvm)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/rkvm/default.nix)) | Yes | No | Yes | Virtual KVM switch for Linux machines |
| [rustdesk-server](https://github.com/rustdesk/rustdesk-server)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/rustdesk-server/default.nix)) | Yes | No | Yes | RustDesk Server Program |

### network
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [bandwhich](https://github.com/imsnif/bandwhich)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/bandwhich/default.nix)) | Yes | No | Yes | CLI utility for displaying current network utilization |
| [hickory-dns](https://github.com/hickory-dns/hickory-dns)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/dns/trust-dns/default.nix)) | Yes | No | Yes | Rust based DNS client, server, and resolver |
| [networkmanager](https://gitlab.freedesktop.org/NetworkManager/NetworkManager)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/networkmanager/default.nix)) | Yes | No | No | Network configuration and management tool |
| [nftables](https://netfilter.org/projects/nftables)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/os-specific/linux/nftables/default.nix)) | Yes | No | No | Project that aims to replace the existing {ip,ip6,arp,eb}tables framework |
| [rosenpass](https://github.com/rosenpass/rosenpass)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/rosenpass/default.nix)) | Yes | PO | Yes | Build post-quantum-secure VPNs with WireGuard |
| [sniffnet](https://github.com/gyulyvgc/sniffnet)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/sniffnet/default.nix))| Yes | No | Yes | Cross-platform application to monitor your network traffic with ease |
| [tailscale](https://github.com/tailscale/tailscale)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/tailscale/default.nix)) | Yes | No | No | Node agent for Tailscale, a mesh VPN built on WireGuard |
| [trippy](https://github.com/fujiapple852/trippy)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/trippy/default.nix)) | Yes | No | Yes | Network diagnostic tool |
| [wstunnel](https://github.com/erebe/wstunnel)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ws/wstunnel/package.nix)) | Yes | No | Yes | Tunnel all your traffic over Websocket or HTTP2 - Bypass firewalls/DPI |

### nix-utils
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [nh](https://github.com/viperML/nh)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/nh/nh/package.nix)) | Yes | PN | Yes | Yet another nix cli helper |
| [nix-ld-rs](https://github.com/nix-community/nix-ld-rs)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/nix-ld-rs/package.nix)) | Yes | PO | Yes | Run unpatched dynamic binaries on NixOS (rust version) |
| [nixseparatedebuginfod](https://github.com/symphorien/nixseparatedebuginfod)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/nixseparatedebuginfod/package.nix)) | Yes | PN | Yes | Downloads and provides debug symbols and source code for nix derivations to gdb and other debuginfod-capable debuggers as needed |
| [nix-web](https://codeberg.org/gorgon/gorgon/src/branch/main/nix-web)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/nix-web/package.nix)) | No | No | Yes | Web interface for the Nix store |

### observability
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [below](https://github.com/facebookincubator/below)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/os-specific/linux/below/default.nix)) | Yes | No | Yes | Time traveling resource monitor for modern Linux systems |
| [vector](https://github.com/vectordotdev/vector)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/vector/default.nix)) | Yes | No | Yes | High-performance observability data pipeline |

### search
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [meilisearch](https://github.com/meilisearch/meilisearch)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/search/meilisearch/default.nix)) | Yes | No | Yes | Powerful, fast, and an easy to use search engine |
| [qdrant](https://github.com/qdrant/qdrant)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/search/qdrant/default.nix)) | Yes | No | Yes | Vector Search Engine for the next generation of AI applications |
| [quickwit](https://github.com/quickwit-oss/quickwit)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/search/quickwit/default.nix)) | Yes | No | Yes | Sub-second search & analytics engine on cloud storage |
| [sonic-server](https://github.com/valeriansaliou/sonic)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/search/sonic-server/default.nix)) | Yes | No | Yes | Fast, lightweight and schema-less search backend |

### security
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
WIP

### shells
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [bash](https://www.gnu.org/software/bash)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/bash/5.nix)) | Yes | No | No | GNU Bourne-Again Shell, the de facto standard shell on Linux |
| [blesh](https://github.com/akinomyoga/ble.sh)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/bash/blesh/default.nix)) | Yes | No | No | Bash Line Editor -- a full-featured line editor written in pure Bash |
| [fish](https://github.com/fish-shell/fish-shell)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/fish/default.nix)) | Yes | No | Yes | Smart and user-friendly command line shell |
| [nushell](https://github.com/nushell/nushell)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/nushell/default.nix)) | No | No | Yes | Modern shell written in Rust |

### virtualization
| Package Name | NOM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [cloud-hypervisor](https://github.com/cloud-hypervisor/cloud-hypervisor)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/cloud-hypervisor/default.nix)) | No | No | Yes | Open source Virtual Machine Monitor (VMM) that runs on top of KVM |
| [cntr](https://github.com/Mic92/cntr)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/cntr/default.nix)) | No | PO | Yes | Container debugging tool based on FUSE |
| [conmon-rs](https://github.com/containers/conmon-rs)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/conmon-rs/default.nix)) | No | No | Yes | OCI container runtime monitor written in Rust |
| [crosvm](https://github.com/google/crosvm)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/crosvm/default.nix)) | No | No | Yes | Secure virtual machine monitor for KVM |
| [distrobuilder](https://github.com/lxc/distrobuilder)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/virtualization/distrobuilder/default.nix)) | No | No | No | System container image builder for LXC and Incus |
| [extra-container](https://github.com/erikarvstedt/extra-container)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/virtualization/extra-container/default.nix)) | Yes | No | PN | No | Run declarative containers without full system rebuilds |
| [firecracker](https://github.com/firecracker-microvm/firecracker)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/firecracker/default.nix)) | No | No | Yes | Secure, fast, minimal micro-container virtualization |
| [gnome-boxes](https://gitlab.gnome.org/GNOME/gnome-boxes)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/desktops/gnome/apps/gnome-boxes/default.nix)) | No | No | No | Simple GNOME 3 application to access remote or virtual systems |
| [incus](https://github.com/lxc/incus)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/in/incus/generic.nix)) | Yes | No | No | Powerful system container and virtual machine manager |
| [krun](https://github.com/slp/krun)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/kr/krun/package.nix)) | No | No | Yes | Run programs from your system in a microVM |
| [krunvm](https://github.com/containers/krunvm)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/krunvm/default.nix)) | No | No | Yes | CLI-based utility for creating microVMs from OCI images |
| [libvirt](https://gitlab.com/libvirt/libvirt)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/libraries/libvirt/default.nix)) | Yes | No | No | Toolkit to interact with the virtualization capabilities of recent versions of Linux and other OSes |
| [lxc](https://github.com/lxc/lxc)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/lx/lxc/package.nix)) | Yes | No | No | Userspace tools for Linux Containers, a lightweight virtualization system |
| [OVMF](https://github.com/tianocore/edk2/tree/master/OvmfPkg)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/OVMF/default.nix)) | Yes | No | No | Sample UEFI firmware for QEMU and KVM |
| [qemu](https://gitlab.com/qemu-project/qemu)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/qemu/default.nix)) | Yes | No | No | Generic and open source machine emulator and virtualizer |
| [quickemu](https://github.com/quickemu-project/quickemu)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/qu/quickemu/package.nix)) | No | PO | No | Quickly create and run optimised Windows, macOS and Linux desktop virtual machines |
| [quickgui](https://github.com/quickemu-project/quickgui)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/quickgui/default.nix)) | No | PO | No | Flutter frontend for quickemu |
| [stratovirt](https://gitee.com/openeuler/stratovirt)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/stratovirt/default.nix)) | No | No | Yes | Virtual Machine Manager from Huawei |
| [swtpm](https://github.com/stefanberger/swtpm)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/swtpm/default.nix)) | Yes | No | No | Libtpms-based TPM emulator |
| [virt-manager](https://github.com/virt-manager/virt-manager)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/virt-manager/default.nix)) | Yes | No | No | Desktop user interface for managing virtual machines |
| [xen](https://github.com/xen-project/xen)([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/virtualization/xen/generic.nix)) | Yes | No | No | Xen Hypervisor and related components (Standard Xen) |
