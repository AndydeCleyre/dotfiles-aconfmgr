AddPackage broot # Fuzzy Search + tree + cd
AddPackage buildah # A tool which facilitates building OCI images
AddPackage ddgr # DuckDuckGo from the terminal
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage firewalld # Firewall daemon with D-Bus interface
AddPackage fzf # Command-line fuzzy finder
AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage git # the fast distributed version control system
AddPackage github-cli # The GitHub CLI
AddPackage highlight # Fast and flexible source code highlighter (CLI version)
AddPackage htop # Interactive process viewer
  AddPackage lsof # Lists open files for running Unix processes
  AddPackage strace # A diagnostic, debugging and instructional userspace tracer
AddPackage imagemagick # An image viewing/manipulation program
AddPackage keyd # A key remapping daemon for linux
  CopyFile /etc/keyd/default.conf 640
AddPackage less # A terminal based program for viewing text files
AddPackage lnav # A curses-based tool for viewing and analyzing log files
AddPackage man-db # A utility for reading man pages
AddPackage micro # Modern and intuitive terminal-based text editor
AddPackage mise # The front-end to your dev env
  AddPackage usage # A specification for CLIs
AddPackage ncspot # Cross-platform ncurses Spotify client written in Rust, inspired by ncmpc and the likes.
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage ouch # A command line utility for easily compressing and decompressing files and directories
# AddPackage pastel # A command-line tool to generate, analyze, convert and manipulate colors
AddPackage plocate # Alternative to locate, faster and compatible with mlocate's database.
AddPackage podman # Tool and library for running OCI-based containers in pods
  printf '%s\n' 'andy:100000:65536' >"$(CreateFile /etc/subgid)"
  printf '%s\n' 'andy:100000:65536' >"$(CreateFile /etc/subuid)"
AddPackage python-wheezy-template # A lightweight template library
AddPackage rage-encryption # Rust implementation of the age encryption tool
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage rust # Systems programming language focused on safety, speed and concurrency (cargo)
AddPackage sshfs # FUSE client based on the SSH File Transfer Protocol
AddPackage tailspin # A log file highlighter
AddPackage tealdeer # A fast tldr client in Rust
AddPackage tig # Text-mode interface for Git.
AddPackage tmux # Terminal multiplexer
AddPackage tup # A fast, file-based build system
AddPackage ugrep # ultra fast grep with interactive TUI, fuzzy search, boolean queries, hexdumps and more
AddPackage uv # An extremely fast Python package installer and resolver written in Rust
AddPackage yadm # Yet Another Dotfiles Manager
# AddPackage yt-dlp # A youtube-dl fork with additional features and fixes
#   Prefer: pipz install 'yt-dlp[default,curl-cffi]'
AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
  AddPackage git-zsh-completion # the fast distributed version control system
  AddPackage zsh-completions # Additional completion definitions for Zsh

AddPackage --foreign podlet # Generate podman quadlet (systemd-like) files from a podman command
AddPackage --foreign rescrobbled-git # Music scrobbler daemon using the MPRIS D-Bus interface.
AddPackage --foreign yage # manage encrypted secrets in YAML files with age encryption
