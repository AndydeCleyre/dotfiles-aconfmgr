AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage zram-generator # Systemd unit generator for zram devices

AddPackage arch-wiki-lite # Arch Wiki without HTML. 1/9 as big, easily searched & viewable on console
AddPackage pkgfile # alpm .files metadata explorer
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper

AddPackage broot # Fuzzy Search + tree + cd
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage fzf # Command-line fuzzy finder
AddPackage git # the fast distributed version control system
AddPackage github-cli # The GitHub CLI
AddPackage highlight # Fast and flexible source code highlighter (CLI version)
AddPackage htop # Interactive process viewer
AddPackage keyd # A key remapping daemon for linux
AddPackage less # A terminal based program for viewing text files
AddPackage lsof # Lists open files for running Unix processes
AddPackage man-db # A utility for reading man pages
AddPackage micro # Modern and intuitive terminal-based text editor
AddPackage ncspot # Cross-platform ncurses Spotify client written in Rust, inspired by ncmpc and the likes.
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
# AddPackage pastel # A command-line tool to generate, analyze, convert and manipulate colors
AddPackage podman # Tool and library for running OCI-based containers in pods
AddPackage python-wheezy-template # A lightweight template library
AddPackage sshfs # FUSE client based on the SSH File Transfer Protocol
AddPackage strace # A diagnostic, debugging and instructional userspace tracer
AddPackage tealdeer # A fast tldr client in Rust
AddPackage tmux # Terminal multiplexer
AddPackage tup # A fast, file-based build system
AddPackage ugrep # ultra fast grep with interactive TUI, fuzzy search, boolean queries, hexdumps and more
AddPackage uv # An extremely fast Python package installer and resolver written in Rust
AddPackage yadm # Yet Another Dotfiles Manager
AddPackage yt-dlp # A youtube-dl fork with additional features and fixes
AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
AddPackage --foreign mise # The front-end to your dev env
  AddPackage --foreign usage # A specification for CLIs
AddPackage --foreign rescrobbled-git # Music scrobbler daemon using the MPRIS D-Bus interface.

AddPackage bluez-obex # Object Exchange daemon for sharing content
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
AddPackage firewalld # Firewall daemon with D-Bus interface
  AddPackage python-pyqt6 # A set of Python bindings for the Qt6 toolkit
AddPackage ghostty # Fast, native, feature-rich terminal emulator pushing modern features
AddPackage lutris # Open Gaming Platform
AddPackage meld # Compare files, directories and working copies
AddPackage mpv # a free, open source, and cross-platform media player
  AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage networkmanager # Network connection manager and user applications
AddPackage pipewire # Low-latency audio/video router and processor
# AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
# AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage playerctl # mpris media player controller and lib for spotify, vlc, audacious, bmp, xmms2, and others.
AddPackage steam # Valve's digital software delivery system
  AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New
AddPackage sublime-text # Sublime Text is a sophisticated text editor for code, markup and prose
AddPackage telegram-desktop # Official Telegram Desktop client
  AddPackage webkit2gtk # Web content engine for GTK
AddPackage trash-cli # Command line trashcan (recycle bin) interface
# TODO: make AUR pkg ttf-andysevka, containing builds of all:
IgnorePackage --foreign ttf-iosevka-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-quasi-proportional-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-term-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
# AddPackage --foreign ttf-andysevka
AddPackage --foreign zen-browser-bin # Performance oriented Firefox-based web browser
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop
# Will mullvad tray icon work without this?:
# AddPackage libappindicator-gtk3 # Allow applications to extend a menu via Ayatana indicators in Unity, KDE or Systray (GTK+ 3 library)
AddPackage --foreign parallel-launcher # Modern N64 Emulator

AddPackage wmctrl # Control your EWMH compliant window manager from command line
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage xdotool # Command-line X11 automation tool
AddPackage --foreign espanso-x11 # Cross-platform Text Expander written in Rust (built for X11)

AddPackage appmenu-gtk-module # Application Menu GTK+ Module
AddPackage ark # Archiving Tool
AddPackage bluedevil # Integrate the Bluetooth technology within KDE workspace and applications
AddPackage breeze-gtk # Breeze widget theme for GTK 2 and 3
AddPackage dolphin # KDE File Manager
AddPackage ffmpegthumbs # FFmpeg-based thumbnail creator for video files
AddPackage kde-gtk-config # Syncs KDE settings to GTK applications
AddPackage kdeconnect # Adds communication between KDE and your smartphone
AddPackage kdegraphics-thumbnailers # Thumbnailers for various graphics file formats
AddPackage kdeplasma-addons # All kind of addons to improve your Plasma experience
AddPackage konversation # A user-friendly and fully-featured IRC client
AddPackage kscreen # KDE screen management software
AddPackage merkuro # A calendar application using Akonadi to sync with external services
AddPackage okular # Document Viewer
AddPackage papirus-icon-theme # Papirus icon theme
AddPackage plasma-desktop # KDE Plasma Desktop
AddPackage plasma-nm # Plasma applet written in QML for managing network connections
AddPackage plasma-pa # Plasma applet for audio volume management using PulseAudio
AddPackage plasma5-integration # Qt5 Platform Theme integration plugins for the Plasma workspaces
AddPackage sddm # QML based X11 and Wayland display manager
AddPackage sddm-kcm # KDE Config Module for SDDM
AddPackage spectacle # KDE screenshot capture utility
# AddPackage wireplumber # Session / policy manager implementation for PipeWire
AddPackage xdg-desktop-portal-gtk # A backend implementation for xdg-desktop-portal using GTK
AddPackage --foreign klassy # Highly customizable binary Window Decoration, Application Style and Global Theme plugin for recent versions of the KDE Plasma desktop.
AddPackage --foreign klassy-qt5 # Highly customizable binary Window Decoration, Application Style and Global Theme plugin for recent versions of the KDE Plasma desktop.
AddPackage --foreign kwin-karousel # KWin tiling script with scrolling
AddPackage --foreign phonon-qt6-mpv # Phonon MPV backend for Qt6

CopyFile /etc/firewalld/zones/home.xml
CopyFile /etc/keyd/default.conf 640
printf '%s\n' 'LANG=en_US.UTF-8' >"$(CreateFile /etc/locale.conf)"
CreateLink /etc/localtime /usr/share/zoneinfo/America/New_York
CopyFile /etc/makepkg.conf
CopyFile /etc/makepkg.conf.d/rust.conf
CopyFile /etc/mkinitcpio.conf
printf '%s\n' 'options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss' >"$(CreateFile /etc/modprobe.d/70-rtw89.conf 640)"
CreateLink /etc/os-release ../usr/lib/os-release
CopyFile /etc/pacman.conf
CopyFile /etc/subgid
CopyFile /etc/subuid
CopyFile /etc/sudoers.d/00_andy 440
CopyFile /etc/xdg/reflector/reflector.conf
