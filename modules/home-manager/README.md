> [!NOTE]
> Last-edit: 2024-Apr-16th
> In some categories, I have thresholds with different numbers of stars.

HMM -> HomeManagerModule
Flake Section -> PO: PackageOnly, PH: Package & HomeManagerModule

### ai-utils
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [aichat](https://github.com/sigoden/aichat) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/aichat/default.nix)) | No | No | Yes | Use GPT-4(V), Gemini, LocalAI, Ollama and other LLMs in the terminal |
| [oatmeal](https://github.com/dustinblackman/oatmeal) ([nur](https://github.com/nix-community/nur-combined/tree/master/repos/dustinblackman/pkgs/oatmeal.nix)) | No | No | Yes | Terminal UI to chat with large language models (LLM) using different model backends, and integrations with your favourite editors! |

### animations
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [blender](https://projects.blender.org/blender/blender) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/blender/default.nix)) | No | No | No | 3D Creation/Animation/Publishing System |
| [paraview](https://gitlab.kitware.com/paraview/paraview) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/paraview/default.nix)) | No | No | No | 3D Data analysis and visualization application |
| [synfigstudio](https://github.com/synfig/synfig) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/synfigstudio/default.nix)) | No | No | No | A 2D animation program |

### browsers-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [leetcode-cli](https://github.com/clearloop/leetcode-cli) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/leetcode-cli/default.nix)) | No | PO | Yes | May the code be with you 👻 |
| [monolith](https://github.com/Y2Z/monolith) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/backup/monolith/default.nix)) | No | No | Yes | Bundle any web page into a single HTML file |
| [ncgopher](https://github.com/jansc/ncgopher) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/ncgopher/default.nix)) | No | No | Yes | Gopher and gemini client for the modern internet |
| [wiki-tui](https://github.com/builditluc/wiki-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/misc/wiki-tui/default.nix)) | No | No | Yes | Simple and easy to use Wikipedia Text User Interface |

### browsers-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [arti](https://gitlab.torproject.org/tpo/core/arti) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/arti/default.nix)) | No | No | Yes | An implementation of Tor in Rust |
| [browdi](https://github.com/Nosterx/browdi) | No | No | Yes | Browser Chooser/Dispatcher/Selector |
| [browsers](https://github.com/Browsers-software/browsers) | No | No | Yes | Open the right browser at the right time |
| [firefox-devedition](https://www.mozilla.org/en-US/firefox/developer/) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/firefox/packages.nix)) | Yes | No | No | A web browser built from Firefox source tree |
| [floorp](https://github.com/Floorp-Projects/Floorp) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/firefox/packages.nix)) | No | No | No | A fork of Firefox, focused on keeping the Open, Private and Sustainable Web alive, built in Japan |
| [geopard](https://github.com/ranfdev/Geopard) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ge/geopard/package.nix)) | No | PO | Yes | Colorful, adaptive gemini browser |
| [ladybird](https://github.com/LadybirdBrowser/ladybird) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/ladybird/default.nix)) | No | No | No | Browser using the SerenityOS LibWeb engine with a Qt or Cocoa GUI |
| [librewolf](https://codeberg.org/librewolf) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/firefox/packages.nix)) | Yes | No | No | A fork of Firefox, focused on privacy, security and freedom |
| [mullvad-browser](https://gitlab.torproject.org/tpo/applications/mullvad-browser) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/mullvad-browser/default.nix)) | No | No | No | Privacy-focused browser made in a collaboration between The Tor Project and Mullvad |
| [nyxt](https://github.com/atlas-engineer/nyxt) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/nyxt/default.nix)) | No | No | No | Infinitely extensible web-browser (with Lisp development files using WebKitGTK platform port) |
| [ungoogled-chromium](https://github.com/ungoogled-software/ungoogled-chromium) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/chromium/browser.nix)) | Yes | No | No | An open source web browser from Google, with dependencies on Google web services removed |

### data-managers-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [broot](https://github.com/Canop/broot) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/broot/default.nix)) | Yes | No | Yes | Interactive tree view, a fuzzy search, a balanced BFS descent and customizable commands |
| [conserve](https://github.com/sourcefrog/conserve) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/backup/conserve/default.nix)) | No | No | Yes | Robust portable backup tool in Rust |
| [dua](https://github.com/Byron/dua-cli) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/dua/default.nix)) | No | No | Yes | Tool to conveniently learn about the disk usage of directories |
| [dust](https://github.com/bootandy/dust) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/du/dust/package.nix)) | No | No | Yes | du + rust = dust. Like du but more intuitive |
| [dysk](https://github.com/Canop/dysk) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/filesystems/dysk/default.nix)) | No | No | Yes | Get information on your mounted disks |
| [fclones](https://github.com/pkolaczk/fclones) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/fclones/default.nix)) | No | No | Yes | Efficient Duplicate File Finder and Remover |
| [felix-fm](https://github.com/kyoheiu/felix) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fe/felix-fm/package.nix)) | No | No | Yes | Tui file manager with vim-like key mapping |
| [joshuto](https://github.com/kamiyaa/joshuto) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/jo/joshuto/package.nix)) | Yes | PO | Yes | Ranger-like terminal file manager written in Rust |
| [rustic](https://github.com/rustic-rs/rustic) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ru/rustic/package.nix)) | No | No | Yes | Fast, encrypted, deduplicated backups powered by pure Rust |
| [tere](https://github.com/mgunyho/tere) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/tere/default.nix)) | No | No | Yes | Faster alternative to cd + ls |
| [termscp](https://github.com/veeso/termscp) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/termscp/default.nix)) | No | No | Yes | Feature rich terminal UI file transfer and explorer with support for SCP/SFTP/FTP/S3/SMB |
| [xplr](https://github.com/sayanarijit/xplr) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/xp/xplr/package.nix)) | Yes | PO | Yes | Hackable, minimal, fast TUI file explorer |
| [yazi](https://github.com/sxyazi/yazi) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ya/yazi-unwrapped/package.nix)) | Yes | PO | Yes | Blazing fast terminal file manager written in Rust, based on async I/O |

### data-managers-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [celeste](https://github.com/hwittenborn/celeste) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/sync/celeste/default.nix)) | No | No | Yes | GUI file synchronization client that can sync with any cloud provider |
| [cosmic-files](https://github.com/pop-os/cosmic-files) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-files/package.nix)) | No | No | Yes | File Manager for the COSMIC Desktop Environment |
| [czkawka](https://github.com/qarmin/czkawka) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/cz/czkawka/package.nix)) | No | No | Yes | A simple, fast and easy to use app to remove unnecessary files from your computer |
| [fm](https://github.com/euclio/fm) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/file-managers/fm/default.nix)) | No | PO | Yes | Small, general purpose file manager built with GTK4 |
| [pika-backup](https://gitlab.gnome.org/World/pika-backup) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/backup/pika-backup/default.nix)) | No | No | Yes | Simple backups based on borg |
| [szyszka](https://github.com/qarmin/szyszka) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/szyszka/default.nix)) | No | No | Yes | Simple but powerful and fast bulk file renamer |
| [warp](https://gitlab.gnome.org/World/warp) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/warp/default.nix)) | No | No | Yes | Fast and secure file transfer |

### desktop-managers
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
wip

### csv-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [csview](https://github.com/wfxr/csview) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/csview/default.nix)) | No | No | Yes | High performance csv viewer with cjk/emoji support |
| [csvlens](https://github.com/YS-L/csvlens) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/cs/csvlens/package.nix)) | No | No | Yes | Command line csv viewer |
| [qsv](https://github.com/jqnatividad/qsv) | No | No | Yes | CSVs sliced, diced & analyzed |
| [tidy-viewer](https://github.com/alexhallam/tv) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/tidy-viewer/default.nix)) | No | No | Yes | Cross-platform CLI csv pretty printer that uses column styling to maximize viewer enjoyment |

### git-utils-cli (stars>1k)
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [delta](https://github.com/dandavison/delta) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/delta/default.nix)) | Yes | No | Yes | A syntax-highlighting pager for git |
| [gh](https://github.com/cli/cli) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/gh/default.nix)) | Yes | No | No | GitHub CLI tool |
| [gh-dash](https://github.com/dlvhdr/gh-dash) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/gh-dash/default.nix)) | Yes | No | No | Github Cli extension to display a dashboard with pull requests and issues |
| [git](https://github.com/git/git) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/git/default.nix)) | Yes | No | No | Distributed version control system |
| [git-absorb](https://github.com/tummychow/git-absorb) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/git-absorb/default.nix)) | No | No | Yes | git commit --fixup, but automatic |
| [git-branchless](https://github.com/arxanas/git-branchless) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/git-branchless/default.nix)) | No | PO | Yes | A suite of tools to help you visualize, navigate, manipulate, and repair your commit history |
| [git-interactive-rebase-tool](https://github.com/MitMaro/git-interactive-rebase-tool) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/git-interactive-rebase-tool/default.nix)) | No | No | Yes | Native cross platform full feature terminal based sequence editor for git interactive rebase |
| [gitoxide](https://github.com/Byron/gitoxide) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/gitoxide/default.nix)) | No | No | Yes | A command-line application for interacting with git repositories |
| [gitu](https://github.com/altsem/gitu) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/gi/gitu/package.nix)) | No | PO | Yes | A TUI Git client inspired by Magit |
| [gitui](https://github.com/extrawurst/gitui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/gi/gitui/package.nix)) | Yes | No | Yes | Blazing fast terminal-ui for Git written in Rust |
| [gql](https://github.com/AmrDeveloper/GQL) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/gql/default.nix)) | No | No | Yes | A SQL like query language to perform queries on .git files |
| [jujutsu](https://github.com/martinvonz/jj) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/jujutsu/default.nix)) | Yes | PO | Yes | A Git-compatible DVCS that is both simple and powerful |
| [onefetch](https://github.com/o2sh/onefetch) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/onefetch/default.nix)) | No | No | Yes | Git repository summary on your terminal |
| [sapling](https://github.com/facebook/sapling) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/version-management/sapling/default.nix)) | Yes | No | Yes | Scalable, User-Friendly Source Control System |

### git-utils-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [github-desktop](https://github.com/desktop/desktop) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/gi/github-desktop/package.nix)) | No | No | No | GUI for managing Git and GitHub. |

### hex-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [biodiff](https://github.com/8051Enthusiast/biodiff) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/biodiff/default.nix)) | No | No | Yes | Hex diff viewer using alignment algorithms from biology |
| [heh](https://github.com/ndd7xv/heh) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/heh/default.nix)) | No | No | Yes | A cross-platform terminal UI used for modifying file data in hex or ASCII |
| [hexyl](https://github.com/sharkdp/hexyl) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/hexyl/default.nix)) | No | No | Yes | A command-line hex viewer |

### image-editors
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [darktable](https://github.com/darktable-org/darktable) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/darktable/default.nix)) | No | No | No | Virtual lighttable and darkroom for photographers |
| [digikam](https://invent.kde.org/graphics/digikam) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/di/digikam/package.nix)) | No | No | No | Photo Management Program |
| [gimp](https://www.gimp.org) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/gimp/default.nix)) | No | No | No | The GNU Image Manipulation Program |
| [oculante](https://github.com/woelper/oculante) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/oculante/default.nix)) | No | No | Yes | Minimalistic crossplatform image viewer written in Rust |
| [rawtherapee](http://www.rawtherapee.com) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/rawtherapee/default.nix)) | No | No | No | RAW converter and digital photo processing software |
| [simp](https://github.com/Kl4rry/simp) | No | No | Yes | A fast and simple GPU-accelerated image manipulation program |

### json-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [jless](https://github.com/PaulJuliusMartinez/jless) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/jless/default.nix)) | No | No | Yes | A command-line pager for JSON data |
| [jql](https://github.com/yamafaktory/jql) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/jql/default.nix)) | No | No | Yes | A JSON Query Language CLI tool built with Rust |

### log-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [angle-grinder](https://github.com/rcoh/angle-grinder) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/angle-grinder/default.nix)) | No | No | Yes | Slice and dice logs on the command line |
| [fblog](https://github.com/brocode/fblog) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/fblog/default.nix)) | No | No | Yes | Small command-line JSON log viewer |
| [tailspin](https://github.com/bensadeh/tailspin) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/tailspin/default.nix)) | No | No | Yes | Log file highlighter |

### markdown-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [inlyne](https://github.com/Inlyne-Project/inlyne) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/inlyne/default.nix)) | No | No | Yes | A GPU powered browserless markdown viewer |
| [mdcat](https://github.com/swsnr/mdcat) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/mdcat/default.nix)) | No | No | Yes | cat for markdown |
| [md-tui](https://github.com/henriklovhaug/md-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/md/md-tui/package.nix)) | No | PO | Yes | Markdown renderer in the terminal |

### messaging-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [gurk-rs](https://github.com/boxdot/gurk-rs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/instant-messengers/gurk-rs/default.nix)) | No | No | Yes | Signal Messenger client for terminal |
| [halloy](https://github.com/squidowl/halloy) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ha/halloy/package.nix)) | No | No | Yes | IRC application |
| [himalaya](https://github.com/soywod/himalaya) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/hi/himalaya/package.nix)) | Yes | PO | Yes | CLI to manage emails |
| [iamb](https://github.com/ulyssa/iamb) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/instant-messengers/iamb/default.nix)) | No | PO | Yes | Matrix client for Vim addicts |
| [tiny](https://github.com/osa1/tiny) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/irc/tiny/default.nix)) | Yes | No | Yes | Console IRC client |

### messaging-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [flare-signal](https://gitlab.com/schmiddi-on-mobile/flare) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/instant-messengers/flare-signal/default.nix)) | No | PO | Yes | Unofficial Signal GTK client |
| [fractal](https://gitlab.gnome.org/GNOME/fractal) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/instant-messengers/fractal/default.nix)) | No | No | Yes | Matrix group messaging app |
| [protonmail-bridge-gui](https://github.com/ProtonMail/proton-bridge) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/protonmail-bridge/default.nix)) | No | No | No | Use your ProtonMail account with your local e-mail client |
| [thunderbird](https://thunderbird.net) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/browsers/firefox/wrapper.nix)) | Yes | No | No | Full-featured e-mail client |

### misc-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [asciinema](https://github.com/asciinema/asciinema) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/asciinema/default.nix)) | No | PO | Yes | Terminal session recorder and the best companion of asciinema.org |
| [asciinema-agg](https://github.com/asciinema/agg) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/asciinema/default.nix)) | No | PO | Yes | Command-line tool for generating animated GIF files from asciicast v2 files produced by asciinema terminal recorder |
| [crowbook](https://github.com/crowdagger/crowbook) | No | No | Yes | Converts books written in Markdown to HTML, LaTeX/PDF and EPUB |
| [gpg-tui](https://github.com/orhun/gpg-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/gpg-tui/default.nix)) | No | No | Yes | Terminal user interface for GnuPG |
| [httm](https://github.com/kimono-koans/httm) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ht/httm/package.nix)) | No | No | Yes | Interactive, file-level Time Machine-like tool for ZFS/btrfs |
| [hyperfine](https://github.com/sharkdp/hyperfine) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/hyperfine/default.nix)) | No | No | Yes | Command-line benchmarking tool |
| [oha](https://github.com/hatoo/oha) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/oha/default.nix)) | No | No | Yes | HTTP load generator inspired by rakyll/hey with tui animation |
| [presenterm](https://github.com/mfontanini/presenterm) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/pr/presenterm/package.nix)) | No | PO | Yes | Terminal based slideshow tool |
| [rqbit](https://github.com/ikatson/rqbit) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/rq/rqbit/package.nix)) | No | No | Yes | Bittorrent client in Rust |
| [ruplacer](https://github.com/your-tools/ruplacer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/ruplacer/default.nix)) | No | No | Yes | Find and replace text in source files |
| [russ](https://github.com/ckampfe/russ) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/feedreaders/russ/default.nix)) | No | No | Yes | TUI RSS reader with vim-like controls and a local-first, offline-first focus |
| [sic-image-cli](https://github.com/foresterre/sic) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/graphics/sic-image-cli/default.nix)) | No | No | Yes | Accessible image processing and conversion from the terminal |
| [silicon](https://github.com/Aloxaf/silicon) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/si/silicon/package.nix)) | No | No | Yes | Create beautiful image of your source code |
| [speedtest-rs](https://github.com/nelsonjchen/speedtest-rs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/speedtest-rs/default.nix)) | No | No | Yes | Command line internet speedtest tool written in rust |
| [tickrs](https://github.com/tarkah/tickrs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/tickrs/default.nix)) | No | No | Yes | Realtime ticker data in your terminal |
| [toipe](https://github.com/Samyak2/toipe) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/toipe/default.nix)) | No | No | Yes | Trusty terminal typing tester |

### misc-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [contrast](https://gitlab.gnome.org/World/design/contrast) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/contrast/package.nix)) | No | No | Yes | Checks whether the contrast between two colors meet the WCAG requirements |
| [emblem](https://gitlab.gnome.org/World/design/emblem) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/emblem/default.nix)) | No | No | Yes | Generate project icons and avatars from a symbolic icon |
| [eyedropper](https://github.com/FineFindus/eyedropper) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/eyedropper/default.nix)) | No | No | Yes | Pick and format colors |
| [fragments](https://gitlab.gnome.org/World/Fragments) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fr/fragments/package.nix)) | No | No | Yes | Easy to use BitTorrent client for the GNOME desktop environment |
| [gnome-decoder](https://gitlab.gnome.org/World/decoder) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/gnome-decoder/default.nix)) | No | No | Yes | Scan and Generate QR Codes |
| [gnome-solanum](https://gitlab.gnome.org/World/Solanum) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/gnome-solanum/default.nix)) | No | No | Yes | Pomodoro timer for the GNOME desktop |
| [icon-library](https://gitlab.gnome.org/World/design/icon-library) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/icon-library/default.nix)) | No | No | Yes | Symbolic icons for your apps |
| [impression](https://gitlab.com/adhami3310/Impression) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/im/impression/package.nix)) | No | No | Yes | Straight-forward and modern application to create bootable drives |
| [newsflash](https://gitlab.com/news-flash/news_flash_gtk) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/feedreaders/newsflash/default.nix)) | No | No | Yes | Modern feed reader designed for the GNOME desktop |
| [overskride](https://github.com/kaii-lb/overskride) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ov/overskride/package.nix)) | No | No | Yes | Bluetooth and Obex client that is straight to the point, DE/WM agnostic, and beautiful |
| [popsicle](https://github.com/pop-os/popsicle) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/popsicle/default.nix)) | No | No | Yes | Multiple USB File Flasher |
| [qrtool](https://github.com/sorairolake/qrtool) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/qr/qrtool/package.nix)) | No | No | Yes | Utility for encoding and decoding QR code images |
| [ruffle](https://github.com/ruffle-rs/ruffle) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/emulators/ruffle/default.nix)) | No | No | Yes | Adobe Flash Player emulator written in the Rust programming language |
| [squeekboard](https://gitlab.gnome.org/World/Phosh/squeekboard) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/accessibility/squeekboard/default.nix)) | No | No | Yes | Virtual keyboard supporting Wayland |
| [symbolic-preview](https://gitlab.gnome.org/World/design/symbolic-preview) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/symbolic-preview/default.nix)) | No | No | Yes | Symbolics made easy |
| [tasks](https://github.com/edfloreshz/tasks) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ta/tasks/package.nix)) | No | No | Yes | Simple task management application for the COSMIC desktop |
| [textpieces](https://gitlab.com/liferooter/textpieces) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/te/textpieces/package.nix)) | No | PO | Yes | Swiss knife of text processing |

### multimedia-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [ani-cli](https://github.com/pystardust/ani-cli) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/ani-cli/default.nix)) | No | No | No | Cli tool to browse and play anime |
| [jerry](https://github.com/justchokingaround/jerry) | No | PO | No | Watch anime with automatic anilist syncing and other cool stuff |
| [lobster](https://github.com/justchokingaround/lobster) | No | PO | No | mmm lobster |
| [mpv](https://github.com/mpv-player/mpv) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/mpv/wrapper.nix)) | Yes | No | No | General-purpose media player, fork of MPlayer and mplayer2 |
| [rustplayer](https://github.com/Kingtous/RustPlayer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ru/rustplayer/package.nix)) | No | No | Yes | Local audio player and network m3u8 radio player using a terminal interface |
| [scope-tui](https://github.com/alemidev/scope-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/sc/scope-tui/package.nix)) | No | No | Yes | Simple oscilloscope/vectorscope/spectroscope for your terminal |
| [termusic](https://github.com/tramhao/termusic) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/termusic/default.nix)) | No | No | Yes | Terminal Music Player TUI written in Rust |
| [tplay](https://github.com/maxcurzi/tplay) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/tp/tplay/package.nix)) | No | No | Yes | Terminal Media Player |
| [twitch-tui](https://github.com/Xithrius/twitch-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/networking/instant-messengers/twitch-tui/default.nix)) | No | No | Yes | Twitch chat in the terminal |
| [yaydl](https://github.com/dertuxmalwieder/yaydl) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/video/yaydl/default.nix)) | No | No | Yes | Yet another youtube down loader |
| [ytermusic](https://github.com/ccgauche/ytermusic) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/yt/ytermusic/package.nix)) | No | No | Yes | TUI based Youtube Music Player that aims to be as fast and simple as possible |

### multimedia-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [amberol](https://gitlab.gnome.org/World/amberol) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/amberol/default.nix)) | Yes | No | Yes | Small and simple sound and music player |
| [coppwr](https://github.com/dimtpap/coppwr) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/coppwr/package.nix)) | No | No | Yes | Low level control GUI for the PipeWire multimedia server |
| [fretboard](https://github.com/bragefuglseth/fretboard) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fr/fretboard/package.nix)) | No | No | Yes | Look up guitar chords |
| [glide-media-player](https://github.com/philn/glide) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/gl/glide-media-player/package.nix)) | No | No | Yes | Linux/macOS media player based on GStreamer and GTK |
| [gnome-podcasts](https://gitlab.gnome.org/World/podcasts) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/gnome-podcasts/default.nix)) | No | No | Yes | Listen to your favorite podcasts |
| [helvum](https://gitlab.freedesktop.org/pipewire/helvum) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/helvum/default.nix)) | No | No | Yes | GTK patchbay for pipewire |
| [kooha](https://github.com/SeaDve/Kooha) ([nixpkgs](https://github.com/SeaDve/Kooha)) | No | No | Yes | Elegantly record your screen |
| [loupe](https://gitlab.gnome.org/GNOME/loupe) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/lo/loupe/package.nix)) | No | No | Yes | Simple image viewer application written with GTK4 and Rust |
| [metronome](https://gitlab.gnome.org/World/metronome) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/me/metronome/package.nix)) | No | No | Yes | Keep the tempo |
| [mousai](https://github.com/SeaDve/Mousai) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/mo/mousai/package.nix)) | No | No | Yes | Identify any songs in seconds |
| [neothesia](https://github.com/PolyMeilex/Neothesia) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ne/neothesia/package.nix)) | No | No | Yes | Flashy Synthesia Like Software For Linux, Windows and macOS |
| [obs-studio](https://github.com/obsproject/obs-studio) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/obs-studio/default.nix)) | Yes | No | No | Free and open source software for video recording and live streaming |
| [pipeline](https://gitlab.com/schmiddi-on-mobile/pipeline) | No | PO | Yes | Watch YouTube and PeerTube videos in one place |
| [pwvucontrol](https://github.com/saivert/pwvucontrol) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/pwvucontrol/default.nix)) | No | No | Yes | Pipewire Volume Control |
| [shortwave](https://gitlab.gnome.org/World/Shortwave) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/shortwave/default.nix)) | No | No | Yes | Find and listen to internet radio stations |
| [snapshot](https://gitlab.gnome.org/GNOME/snapshot) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/snapshot/default.nix)) | No | No | Yes | Take pictures and videos on your computer, tablet, or phone |
| [songrec](https://github.com/marin-m/SongRec) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/songrec/default.nix)) | No | No | Yes | Open-source Shazam client for Linux, written in Rust |
| [switcheroo](https://gitlab.com/adhami3310/Switcheroo) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/sw/switcheroo/package.nix)) | No | No | Yes | App for converting images between different formats |

### music-productions
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [ardour](https://git.ardour.org/ardour/ardour) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/ardour/default.nix)) | No | No | No | Multi-track hard disk recording software |
| [lmms](https://github.com/lmms/lmms) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/lmms/default.nix)) | No | No | No | DAW similar to FL Studio (music production software) |
| [lsp-plugins](https://github.com/lsp-plugins/lsp-plugins) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/lsp-plugins/default.nix)) | No | No | No | Collection of open-source audio plugins |
| [muse](https://github.com/muse-sequencer/muse) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/muse/default.nix)) | No | No | No | MIDI/Audio sequencer with recording and editing capabilities |
| [qtractor](https://github.com/rncbc/qtractor) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/qt/qtractor/package.nix)) | No | No | No | Audio/MIDI multi-track sequencer |
| [yabridge](https://github.com/robbert-vdh/yabridge) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/audio/yabridge/default.nix)) | No | No | No | Modern and transparent way to use Windows VST2 and VST3 plugins on Linux |
| [zrythm](https://gitlab.zrythm.org/zrythm/zrythm) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/audio/zrythm/default.nix)) | No | No | No | Automated and intuitive digital audio workstation |

### nix-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [comma](https://github.com/nix-community/comma) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/package-management/comma/default.nix)) | No | PO | Yes | Runs programs without installing them |
| [devenv](https://github.com/cachix/devenv) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/de/devenv/package.nix)) | No | PO | Yes | Fast, Declarative, Reproducible, and Composable Developer Environments |
| [direnv](https://github.com/direnv/direnv) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/direnv/default.nix)) | Yes | PO | No | Shell extension that manages your environment |
| [fh](https://github.com/DeterminateSystems/fh) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/nix/fh/default.nix)) | No | PO | Yes | The official FlakeHub CLI |
| [flake-checker](https://github.com/DeterminateSystems/flake-checker) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fl/flake-checker/package.nix)) | No | PO | Yes | Health checks for your Nix flakes |
| [lorri](https://github.com/nix-community/lorri) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/lorri/default.nix)) | Yes | No | Yes | Your project's nix-env |
| [nix-direnv](https://github.com/nix-community/nix-direnv) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/nix-direnv/package.nix)) | Yes | PO | No | Fast, persistent use_nix implementation for direnv |
| [nix-doc](https://github.com/lf-/nix-doc) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/package-management/nix-doc/default.nix)) | No | PO | Yes | An interactive Nix documentation tool |
| [nix-index](https://github.com/nix-community/nix-index-database) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/package-management/nix-index/default.nix)) | No | PO | Yes | A files database for nixpkgs |
| [nix-init](https://github.com/nix-community/nix-init) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/nix/nix-init/default.nix)) | No | PO | Yes | Command line tool to generate Nix packages from URLs |
| [nix-melt](https://github.com/nix-community/nix-melt) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/nix/nix-melt/default.nix)) | No | PO | Yes | A ranger-like flake.lock viewer |
| [nixpkgs-hammering](https://github.com/jtojnar/nixpkgs-hammering) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/nix/nixpkgs-hammering/default.nix)) | No | PO | Yes | A set of nit-picky rules that aim to point out and explain common mistakes in nixpkgs package pull requests|
| [nixpkgs-lint-community](https://github.com/nix-community/nixpkgs-lint) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/nix/nixpkgs-lint/default.nix)) | No | PO | Yes | A fast semantic linter for Nix using tree-sitter |
| [nix-web](https://codeberg.org/gorgon/gorgon/src/branch/main/nix-web) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ni/nix-web/package.nix)) | No | No | Yes | Web interface for the Nix store |
| [nurl](https://github.com/nix-community/nurl) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/nurl/default.nix)) | No | PO | Yes | Command-line tool to generate Nix fetcher calls from repository URLs |

### nix-utils-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [nixos-conf-editor](https://github.com/snowfallorg/nixos-conf-editor) | No | PO | Yes | A libadwaita/gtk4 app for editing NixOS configurations |
| [nix-software-center](https://github.com/snowfallorg/nix-software-center) | No | PO | Yes |A simple gtk4/libadwaita software center to easily install and manage nix packages |

### office
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [libreoffice](https://libreoffice.org) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/office/libreoffice/default.nix)) | No | No | No | Comprehensive, professional-quality productivity suite, a variant of openoffice.org |
| [onlyoffice](https://www.onlyoffice.com) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/on/onlyoffice-bin/package.nix)) | No | No | No | Office suite that combines text, spreadsheet and presentation editors allowing to create, view and edit local documents |

### painters
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [inkscape](https://gitlab.com/inkscape/inkscape) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/inkscape/default.nix)) | No | No | No | Vector graphics editor |
| [krita](https://invent.kde.org/graphics/krita) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/krita/generic.nix)) | No | No | No | A free and open source painting application |
| [mypaint](https://github.com/mypaint/mypaint) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/mypaint/default.nix)) | No | No | No | A graphics application for digital painters |
| [rnote](https://github.com/flxzt/rnote) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/rnote/default.nix)) | No | No | Yes | Simple drawing application to create handwritten notes |

### resource-monitors-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [bottom](https://github.com/ClementTsang/bottom) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/bottom/default.nix)) | Yes | No | Yes | Cross-platform graphical process/system monitor with a customizable interface |
| [havn](https://github.com/mrjackwills/havn) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ha/havn/package.nix)) | No | No | Yes | Fast configurable port scanner with reasonable defaults |
| [kmon](https://github.com/orhun/kmon) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/kmon/default.nix)) | No | No | Yes | Linux Kernel Manager and Activity Monitor |
| [netscanner](https://github.com/Chleba/netscanner) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ne/netscanner/package.nix)) | No | No | Yes | Network scanner with features like WiFi scanning, packetdump and more |
| [openobserve](https://github.com/openobserve/openobserve) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/servers/monitoring/openobserve/default.nix)) | No | No | Yes | Cloud-native observability platform built specifically for logs, metrics, traces, analytics & realtime user-monitoring |
| [sniffglue](https://github.com/kpcyrd/sniffglue) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/sn/sniffglue/package.nix)) | No | No | Yes |Secure multithreaded packet sniffer |
| [websocat](https://github.com/vi/websocat) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/websocat/default.nix)) | No | No | Yes | Command-line client for WebSockets (like netcat/socat) |
| [zenith](https://github.com/bvaisvil/zenith) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/zenith/default.nix)) | No | No | Yes | Sort of like top or htop but with zoom-able charts, network, and disk usage |

### resource-monitors-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [bustle](https://gitlab.gnome.org/World/bustle) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/bu/bustle/package.nix)) | No | No | Yes | Graphical D-Bus message analyser and profiler |
| [mission-center](https://gitlab.com/mission-center-devs/mission-center) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/mission-center/default.nix)) | No | No | Yes | Monitor your CPU, Memory, Disk, Network and GPU usage |
| [process-viewer](https://github.com/guillaumegomez/process-viewer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/process-viewer/default.nix)) | No | No | Yes | Process viewer GUI in rust |
| [resources](https://github.com/nokyan/resources) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/re/resources/package.nix)) | No | No | Yes | Monitor your system resources and processes |
| [rustscan](https://github.com/RustScan/RustScan) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/rustscan/default.nix)) | No | No | Yes | Faster Nmap Scanning with Rust |

### security-utils-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [cotp](https://github.com/replydev/cotp) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/cotp/default.nix)) | No | No | Yes | Trustworthy, encrypted, command-line TOTP/HOTP authenticator app with import functionality |
| [feroxbuster](https://github.com/epi052/feroxbuster) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/feroxbuster/default.nix)) | No | No | Yes | Fast, simple, recursive content discovery tool |
| [fim-rs](https://github.com/Achiefs/fim) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fi/fim-rs/package.nix)) | No | No | Yes | Host-based file integrity monitoring tool |
| [legba](https://github.com/evilsocket/legba) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/le/legba/package.nix)) | No | No | Yes | Multiprotocol credentials bruteforcer / password sprayer and enumerator |
| [lynis](https://github.com/CISOfy/lynis) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/lynis/default.nix)) | No | No | No | Security auditing tool for Linux, macOS, and UNIX-based systems |
| [noseyparker](https://github.com/praetorian-inc/noseyparker) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/noseyparker/default.nix)) | No | No | Yes | Find secrets and sensitive information in textual data |
| [oo7](https://github.com/bilelmoussaoui/oo7) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/oo/oo7/package.nix)) | No | No | Yes | James Bond went on a new mission as a Secret Service provider |
| [openvas-scanner](https://github.com/greenbone/openvas-scanner) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/op/openvas-scanner/package.nix)) | No | No | Yes | Scanner component for Greenbone Community Edition |
| [paper-age](https://github.com/matiaskorhonen/paper-age) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/pa/paper-age/package.nix)) | No | No | Yes | Easy and secure paper backups of secrets |
| [pdfrip](https://github.com/mufeedvh/pdfrip) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/pd/pdfrip/package.nix)) | No | No | Yes | PDF password cracking utility |
| [ripsecrets](https://github.com/sirwart/ripsecrets) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ri/ripsecrets/package.nix)) | No | PO | Yes | Command-line tool to prevent committing secret keys into your source code |
| [sbomnix](https://github.com/tiiuae/sbomnix) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/sbomnix/default.nix)) | No | PO | No | Utilities to help with software supply chain challenges on nix targets |
| [vulnix](https://github.com/nix-community/vulnix) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/security/vulnix/default.nix)) | No | No | No | NixOS vulnerability scanner |

### security-utils-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [authenticator](https://gitlab.gnome.org/World/Authenticator) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/authenticator/default.nix)) | No | No | Yes | Two-factor authentication code generator for GNOME |
| [binocle](https://github.com/sharkdp/binocle) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/binocle/default.nix)) | No | No | Yes | Graphical tool to visualize binary data |
| [gnome-obfuscate](https://gitlab.gnome.org/World/obfuscate) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/graphics/gnome-obfuscate/default.nix)) | No | No | Yes | Censor private information |
| [key-rack](https://gitlab.gnome.org/sophie-h/key-rack) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ke/key-rack/package.nix)) | No | No | Yes | View and edit your apps’ keys |
| [proton-pass](https://proton.me/pass) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/pr/proton-pass/package.nix)) | No | No | No | Desktop application for Proton Pass |

### shell-funs (stars>0)
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [charasay](https://github.com/latipun7/charasay) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/charasay/default.nix)) | No | No | Yes | Future of cowsay - Colorful characters saying something |
| [chess-tui](https://github.com/thomas-mauran/chess-tui) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ch/chess-tui/package.nix)) | No | No | Yes | Chess TUI implementation in rust |
| [cmd-wrapped](https://github.com/YiNNx/cmd-wrapped) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/cm/cmd-wrapped/package.nix)) | No | No | Yes | Find out what the past year looks like in commandline |
| [dvd-term](https://github.com/alefnull/dvd-term) | No | No | Yes | Bouncing ASCII art DVD logo (or custom text) for the terminal |
| [dwt1-shell-color-scripts](https://gitlab.com/dwt1/shell-color-scripts) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/dwt1-shell-color-scripts/default.nix)) | No | No | No | A collection of shell color scripts collected by dt (Derek Taylor) |
| [firework-rs](https://github.com/Wayoung7/firework-rs) | No | No | Yes | Cross-platform ascii-art firework simulator in terminal |
| [fortune-kind](https://github.com/cafkafk/fortune-kind) | No | PO | Yes | Fortune favors the kind |
| [genact](https://github.com/svenstaro/genact) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/genact/default.nix)) | No | No | Yes | Nonsense activity generator |
| [globe-cli](https://github.com/adamsky/globe) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/globe-cli/default.nix)) | No | No | Yes | Display an interactive ASCII globe in your terminal |
| [krabby](https://github.com/yannjor/krabby) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/krabby/default.nix)) | No | No | Yes | Print pokemon sprites in your terminal |
| [macchina](https://github.com/Macchina-CLI/macchina) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/macchina/default.nix)) | No | No | Yes | Fast, minimal and customizable system information fetcher |
| [minesweep-rs](https://github.com/cpcloud/minesweep-rs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/games/minesweep-rs/default.nix)) | No | PO | Yes | Sweep some mines for fun, and probably not for profit |
| [pfetch-rs](https://github.com/Gobidev/pfetch-rs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/pfetch-rs/default.nix)) | No | No | Yes | Rewrite of the pfetch system information tool in Rust |
| [pipes-rs](https://github.com/lhvy/pipes-rs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/misc/screensavers/pipes-rs/default.nix)) | No | No | Yes | Over-engineered rewrite of pipes.sh in Rust |
| [rusty-rain](https://github.com/cowboy8625/rusty-rain) | No | No | Yes | Cross platform matrix rain made with Rust |
| [terminaltexteffects](https://chrisbuilds.github.io/terminaltexteffects) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/python-modules/terminaltexteffects/default.nix)) | No | PO | No | A collection of visual effects that can be applied to terminal piped stdin text |
| [terminal-typeracer](https://gitlab.com/ttyperacer/terminal-typeracer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/terminal-typeracer/default.nix)) | No | No | Yes | Open source terminal based version of Typeracer written in rust |
| [ttyper](https://github.com/max-niederman/ttyper) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/ttyper/default.nix)) | No | No | Yes | Terminal-based typing test |

### shell-utils (stars>1k)
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [ast-grep](https://github.com/ast-grep/ast-grep) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/as/ast-grep/package.nix)) | No | No | Yes | Fast and polyglot tool for code searching, linting, rewriting at large scale |
| [atuin](https://github.com/atuinsh/atuin) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/at/atuin/package.nix)) | Yes | PO | Yes | Replacement for a shell history which records additional commands context with optional encrypted synchronization between machines |
| [bash](https://www.gnu.org/software/bash) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/bash/5.nix)) | Yes | No | No | GNU Bourne-Again Shell, the de facto standard shell on Linux |
| [bat](https://github.com/sharkdp/bat) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ba/bat/package.nix)) | Yes | No | Yes | Cat(1) clone with syntax highlighting and Git integration |
| [diffsitter](https://github.com/afnanenayet/diffsitter) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/diffsitter/default.nix)) | No | No | Yes | Tree-sitter based AST difftool to get meaningful semantic diffs |
| [eza](https://github.com/eza-community/eza) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ez/eza/package.nix)) | Yes | PO | Yes | Modern, maintained replacement for ls |
| [fd](https://github.com/sharkdp/fd) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/fd/default.nix)) | No | No | Yes | Simple, fast and user-friendly alternative to find |
| [fish](https://github.com/fish-shell/fish-shell) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/fish/default.nix)) | Yes | No | Yes | Smart and user-friendly command line shell |
| [fzf](https://github.com/junegunn/fzf) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/fz/fzf/package.nix)) | Yes | No | No | Command-line fuzzy finder written in Go |
| [gping](https://github.com/orf/gping) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/gping/default.nix)) | No | No | Yes | Ping, but with a graph |
| [hurl](https://github.com/Orange-OpenSource/hurl) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/hu/hurl/package.nix)) | No | No | Yes | Command line tool that performs HTTP requests defined in a simple plain text format |
| [kalker](https://github.com/PaddiM8/kalker) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/kalker/default.nix)) | No | PO | Yes | Command line calculator |
| [lsd](https://github.com/lsd-rs/lsd) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/lsd/default.nix)) | Yes | No | Yes | The next gen ls command |
| [mcfly](https://github.com/cantino/mcfly) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/mcfly/default.nix)) | Yes | No | Yes | Upgraded ctrl-r where history results make sense for what you're working on right now |
| [mprocs](https://github.com/pvolok/mprocs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/mprocs/default.nix)) | No | No | Yes | TUI tool to run multiple commands in parallel and show the output of each command separately |
| [navi](https://github.com/denisidoro/navi) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/navi/default.nix)) | Yes | No | Yes | Interactive cheatsheet tool for the command-line and application launchers |
| [nushell](https://github.com/nushell/nushell) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/nushell/default.nix)) | Yes | No | Yes | Modern shell written in Rust |
| [ouch](https://github.com/ouch-org/ouch) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/compression/ouch/default.nix)) | No | No | Yes | Command-line utility for easily compressing and decompressing files and directories |
| [procs](https://github.com/dalance/procs) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/admin/procs/default.nix)) | No | No | Yes | Modern replacement for ps written in Rust |
| [pueue](https://github.com/Nukesor/pueue) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/misc/pueue/default.nix)) | Yes | No | Yes | Daemon for managing long running shell commands |
| [ripgrep](https://github.com/BurntSushi/ripgrep) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/ripgrep/default.nix)) | Yes | No | Yes | Utility that combines the usability of The Silver Searcher with the raw speed of grep |
| [ripgrep-all](https://github.com/phiresky/ripgrep-all) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/ripgrep-all/default.nix)) | No | PO | Yes | Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more |
| [sad](https://github.com/ms-jpq/sad) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/sad/default.nix)) | No | No | Yes | CLI tool to search and replace |
| [sd](https://github.com/chmln/sd) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/text/sd/default.nix)) | No | No | Yes | Intuitive find & replace CLI (sed alternative) |
| [shellharden](https://github.com/anordal/shellharden) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/shellharden/default.nix)) | No | No | Yes | Corrective bash syntax highlighter |
| [starship](https://github.com/starship/starship) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/starship/default.nix)) | Yes | No | Yes | Minimal, blazing fast, and extremely customizable prompt for any shell |
| [systeroid](https://github.com/orhun/systeroid) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/system/systeroid/default.nix)) | No | No | Yes | More powerful alternative to sysctl(8) with a terminal user interface |
| [tealdeer](https://github.com/dbrgn/tealdeer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/tealdeer/default.nix)) | Yes | No | Yes | Very fast implementation of tldr in Rust |
| [tokei](https://github.com/XAMPPRocky/tokei) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/development/tools/misc/tokei/default.nix)) | No | No | Yes | Program that allows you to count your code, quickly |
| [topgrade](https://github.com/topgrade-rs/topgrade) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/topgrade/default.nix)) | Yes | No | Yes | Upgrade all the things |
| [watchexec](https://watchexec.github.io) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/watchexec/default.nix)) | No | No | Yes | Executes commands in response to file modifications |
| [xh](https://github.com/ducaale/xh) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/networking/xh/default.nix)) | No | No | Yes | Friendly and fast tool for sending HTTP requests |
| [zellij](https://github.com/zellij-org/zellij) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/zellij/default.nix)) | Yes | No | Yes | Terminal workspace with batteries included |
| [zoxide](https://github.com/ajeetdsouza/zoxide) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/tools/misc/zoxide/default.nix)) | Yes | No | Yes | Fast cd command that learns your habits |

### terminals
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [alacritty](https://github.com/alacritty/alacritty) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/terminal-emulators/alacritty/default.nix)) | Yes | No | Yes | A cross-platform, GPU-accelerated terminal emulator |
| [cosmic-term](https://github.com/pop-os/cosmic-term) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-term/package.nix)) | No | No | Yes | Terminal for the COSMIC Desktop Environment |
| [rio](https://github.com/raphamorim/rio) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/terminal-emulators/rio/default.nix)) | Yes | PO | Yes | A hardware-accelerated GPU terminal emulator powered by WebGPU |
| [wezterm](https://github.com/wez/wezterm) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/terminal-emulators/wezterm/default.nix)) | Yes | PO | Yes | GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust |

### text-editors-cli
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [amp](https://github.com/jmacdonald/amp) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/amp/default.nix)) | No | PO | Yes | A modern text editor inspired by Vim |
| [helix](https://github.com/helix-editor/helix) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/helix/default.nix)) | Yes | PO | Yes | A post-modern modal text editor |
| [neovim](https://github.com/neovim/neovim) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ne/neovim-unwrapped/package.nix)) | Yes | No | No | Vim text editor fork focused on extensibility and agility |

### text-editors-gui
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [cosmic-edit](https://github.com/pop-os/cosmic-edit) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/co/cosmic-edit/package.nix)) | No | PO | Yes | Text Editor for the COSMIC Desktop Environment |
| [lapce](https://github.com/lapce/lapce) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/lapce/default.nix)) | No | No | Yes | Lightning-fast and Powerful Code Editor written in Rust |
| [lem](https://github.com/lem-project/lem) | No | PO | No | Common Lisp editor/IDE with high expansibility |
| [zed-editor](https://github.com/zed-industries/zed) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/ze/zed-editor/package.nix)) | No | No | Yes | High-performance, multiplayer code editor from the creators of Atom and Tree-sitter |

### video-editors
| Package Name | HMM | Flake | Rust | Descriptions |
|:------------:|:---:|:-----:|:----:| ------------ |
| [flowblade](https://github.com/jliljebl/flowblade) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/flowblade/default.nix)) | No | No | No | Multitrack Non-Linear Video Editor |
| [gyroflow](https://github.com/gyroflow/gyroflow) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/gyroflow/default.nix)) | No | No | Yes | Advanced gyro-based video stabilization tool |
| [identity](https://gitlab.gnome.org/YaLTeR/identity) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/id/identity/package.nix)) | No | No | Yes | Program for comparing multiple versions of an image or video |
| [kdenlive](https://invent.kde.org/multimedia/kdenlive) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/kde/gear/kdenlive/default.nix)) | No | No | No | Free and open source video editor, based on MLT Framework and KDE Frameworks 5 |
| [natron](https://github.com/NatronGitHub/Natron) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/natron/default.nix)) | No | No | No | Node-graph based, open-source compositing software |
| [olive](https://github.com/olive-editor/olive) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/olive-editor/default.nix)) | No | No | No | Professional open-source NLE video editor |
| [openshot-qt](https://github.com/OpenShot/openshot-qt) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/openshot-qt/default.nix)) | No | No | No | Free, open-source video editor |
| [pitivi](https://gitlab.gnome.org/GNOME/pitivi) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/pitivi/default.nix)) | No | No | No | Non-Linear video editor utilizing the power of GStreamer |
| [shotcut](https://github.com/mltframework/shotcut) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/shotcut/default.nix)) | No | No | No | A free, open source, cross-platform video editor |
| [video-trimmer](https://gitlab.gnome.org/YaLTeR/video-trimmer) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/video/video-trimmer/default.nix)) | No | No | Yes | Trim videos quickly |
| [vidmerger](https://github.com/TGotwig/vidmerger) ([nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/by-name/vi/vidmerger/package.nix)) | No | No | Yes | Merge video & audio files via CLI |
