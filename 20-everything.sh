# --------------
# -- Packages --
# --------------

# -- Base --
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage zram-generator # Systemd unit generator for zram devices

# -- Arch Helpers --
AddPackage arch-wiki-lite # Arch Wiki without HTML. 1/9 as big, easily searched & viewable on console
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems (paccache.timer, pacdiff)
AddPackage pkgfile # alpm .files metadata explorer (command-not-found)
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper

# -- CLI --
AddPackage broot # Fuzzy Search + tree + cd
AddPackage ddgr # DuckDuckGo from the terminal
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage fzf # Command-line fuzzy finder
AddPackage git # the fast distributed version control system
AddPackage github-cli # The GitHub CLI
AddPackage highlight # Fast and flexible source code highlighter (CLI version)
AddPackage htop # Interactive process viewer
  AddPackage lsof # Lists open files for running Unix processes
  AddPackage strace # A diagnostic, debugging and instructional userspace tracer
AddPackage keyd # A key remapping daemon for linux
AddPackage less # A terminal based program for viewing text files
AddPackage lnav # A curses-based tool for viewing and analyzing log files
AddPackage man-db # A utility for reading man pages
AddPackage micro # Modern and intuitive terminal-based text editor
AddPackage ncspot # Cross-platform ncurses Spotify client written in Rust, inspired by ncmpc and the likes.
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
# AddPackage pastel # A command-line tool to generate, analyze, convert and manipulate colors
AddPackage podman # Tool and library for running OCI-based containers in pods
AddPackage python-wheezy-template # A lightweight template library
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage sshfs # FUSE client based on the SSH File Transfer Protocol
AddPackage tealdeer # A fast tldr client in Rust
AddPackage tig # Text-mode interface for Git.
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

# -- Any Desktop --
AddPackage bluez-obex # Object Exchange daemon for sharing content
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
AddPackage firewalld # Firewall daemon with D-Bus interface
  AddPackage python-pyqt6 # A set of Python bindings for the Qt6 toolkit
AddPackage ghostty # Fast, native, feature-rich terminal emulator pushing modern features
AddPackage kodi # A software media player and entertainment hub for digital media (gl renderer)
AddPackage lutris # Open Gaming Platform
AddPackage meld # Compare files, directories and working copies
AddPackage mpv # a free, open source, and cross-platform media player
  AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage networkmanager # Network connection manager and user applications
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage playerctl # mpris media player controller and lib for spotify, vlc, audacious, bmp, xmms2, and others.
AddPackage qbittorrent # An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar
AddPackage steam # Valve's digital software delivery system
  AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New
AddPackage sublime-text # Sublime Text is a sophisticated text editor for code, markup and prose
AddPackage telegram-desktop # Official Telegram Desktop client
  AddPackage webkit2gtk # Web content engine for GTK
AddPackage trash-cli # Command line trashcan (recycle bin) interface
AddPackage ttf-0xproto-nerd # Patched font 0xProto from nerd fonts library
AddPackage vokoscreen # Easy to use screencast creator
  AddPackage gst-plugins-ugly # Multimedia graph framework - ugly plugins (x264)

AddPackage --foreign arqiver # Simple Qt archive manager based on libarchive
AddPackage --foreign factor # A general purpose, dynamically typed, stack-based programming language.
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop
AddPackage --foreign parallel-launcher # Modern N64 Emulator
AddPackage --foreign qview # qView is a Qt image viewer designed with minimalism and usability in mind.
  AddPackage kimageformats # Image format plugins for Qt 6
    AddPackage libheif # An HEIF and AVIF file format decoder and encoder
# AddPackage --foreign ttf-andysevka
# TODO: make AUR pkg ttf-andysevka, containing builds of these three:
IgnorePackage --foreign ttf-iosevka-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-quasi-proportional-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-term-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
AddPackage --foreign ttf-maple-beta # Open source monospace font with round corner, ligatures and Nerd-Font for IDE and command line
AddPackage --foreign ttf-sudo # A font for programmers and command line users
AddPackage --foreign zen-browser-bin # Performance oriented Firefox-based web browser

# -- X11 Desktop --
AddPackage wmctrl # Control your EWMH compliant window manager from command line
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage xdotool # Command-line X11 automation tool

AddPackage --foreign espanso-x11 # Cross-platform Text Expander written in Rust (built for X11)

# -- KDE Plasma Desktop --
AddPackage appmenu-gtk-module # Application Menu GTK+ Module
AddPackage ark # Archiving Tool
AddPackage bluedevil # Integrate the Bluetooth technology within KDE workspace and applications
AddPackage breeze-gtk # Breeze widget theme for GTK 2 and 3
AddPackage discover # KDE and Plasma resources management GUI
  AddPackage fwupd # Simple daemon to allow session software to update firmware
# AddPackage dolphin # KDE File Manager
AddPackage ffmpegthumbs # FFmpeg-based thumbnail creator for video files
AddPackage kde-gtk-config # Syncs KDE settings to GTK applications
AddPackage kdeconnect # Adds communication between KDE and your smartphone
AddPackage kdegraphics-thumbnailers # Thumbnailers for various graphics file formats
AddPackage kdepim-addons # Addons for KDE PIM applications (calendar events in applet)
AddPackage kdeplasma-addons # All kind of addons to improve your Plasma experience
AddPackage kinfocenter # A utility that provides information about a computer system
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
AddPackage xdg-desktop-portal-gtk # A backend implementation for xdg-desktop-portal using GTK

AddPackage --foreign dolphin-meld # KDE File Manager, using Meld rather than Kompare
AddPackage --foreign klassy # Highly customizable binary Window Decoration, Application Style and Global Theme plugin for recent versions of the KDE Plasma desktop.
AddPackage --foreign klassy-qt5 # Highly customizable binary Window Decoration, Application Style and Global Theme plugin for recent versions of the KDE Plasma desktop.
AddPackage --foreign kwin-karousel # KWin tiling script with scrolling
AddPackage --foreign phonon-qt6-mpv # Phonon MPV backend for Qt6
AddPackage --foreign plasma6-applets-panel-colorizer # Latte-Dock and WM status bar customization features for the default Plasma panels

# -----------
# -- Files --
# -----------

CreateLink /etc/localtime /usr/share/zoneinfo/America/New_York
CreateLink /etc/os-release ../usr/lib/os-release

CopyFile /etc/firewalld/zones/home.xml
CopyFile /etc/keyd/default.conf 640
CopyFile /etc/makepkg.conf
CopyFile /etc/makepkg.conf.d/rust.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/pacman.conf

printf '%s\n' 'LANG=en_US.UTF-8' >"$(CreateFile /etc/locale.conf)"
printf '%s\n' 'andy:100000:65536' >"$(CreateFile /etc/subgid)"
printf '%s\n' 'andy:100000:65536' >"$(CreateFile /etc/subuid)"
printf '%s\n' 'andy ALL=(ALL) ALL' >"$(CreateFile /etc/sudoers.d/00_andy 440)"
printf '%s\n' '---country US,CA' >>"$(GetPackageOriginalFile reflector /etc/xdg/reflector/reflector.conf)"

# -- Disable power-saving mode for wifi, for stability --
<<EOF cat >"$(CreateFile /etc/modprobe.d/70-rtw89.conf 640)"
options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss=y
options rtw89pci disable_aspm_l1=y disable_aspm_l1ss=y
options rtw89_core disable_ps_mode=y
options rtw89core disable_ps_mode=y
EOF
