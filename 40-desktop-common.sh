# -- Any Desktop --
AddPackage bluez-obex # Object Exchange daemon for sharing content
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
AddPackage firewalld # Firewall daemon with D-Bus interface
  AddPackage python-pyqt6 # A set of Python bindings for the Qt6 toolkit
  CopyFile /etc/firewalld/zones/home.xml
# AddPackage flatpak # Linux application sandboxing and distribution framework (formerly xdg-app)
# AddPackage ghostty # Fast, native, feature-rich terminal emulator pushing modern features
AddPackage handbrake # Multithreaded video transcoder
AddPackage kodi # A software media player and entertainment hub for digital media (gl renderer)
AddPackage meld # Compare files, directories and working copies
AddPackage mpv # a free, open source, and cross-platform media player
  AddPackage mpv-mpris # MPRIS plugin for mpv
  AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage networkmanager # Network connection manager and user applications
  AddPackage iwd # Internet Wireless Daemon
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage playerctl # mpris media player controller and lib for spotify, vlc, audacious, bmp, xmms2, and others.
AddPackage qbittorrent # An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar
AddPackage strawberry # A music player aimed at audio enthusiasts and music collectors
  AddPackage gst-plugin-spotify # Multimedia graph framework - spotify plugin
  AddPackage gst-plugins-bad # Multimedia graph framework - bad plugins
AddPackage sublime-text # Sublime Text is a sophisticated text editor for code, markup and prose
AddPackage telegram-desktop # Official Telegram Desktop client
  AddPackage webkit2gtk # Web content engine for GTK
AddPackage trash-cli # Command line trashcan (recycle bin) interface
AddPackage ttf-0xproto-nerd # Patched font 0xProto from nerd fonts library
AddPackage ttf-nerd-fonts-symbols-mono # High number of extra glyphs from popular 'iconic fonts' (monospace)
AddPackage vokoscreen # Easy to use screencast creator
  AddPackage gst-plugins-ugly # Multimedia graph framework - ugly plugins (x264)
AddPackage wezterm # A GPU-accelerated cross-platform terminal emulator and multiplexer
AddPackage zed # A high-performance, multiplayer code editor from the creators of Atom and Tree-sitter

AddPackage --foreign arqiver # Simple Qt archive manager based on libarchive
AddPackage --foreign blobdrop-git # Drag and drop files directly out of the terminal
# AddPackage --foreign factor # A general purpose, dynamically typed, stack-based programming language.
  AddPackage --foreign gtkglext # An OpenGL extension to GTK2.
AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop
AddPackage --foreign onlyoffice-bin # An office suite that combines text, spreadsheet and presentation editors
AddPackage --foreign qview # qView is a Qt image viewer designed with minimalism and usability in mind.
  AddPackage kimageformats # Image format plugins for Qt 6
    AddPackage libheif # An HEIF and AVIF file format decoder and encoder
AddPackage --foreign ttf-fluent-emoji # fluent-emoji by Microsoft
# AddPackage --foreign ttf-andysevka
# TODO: make AUR pkg ttf-andysevka, containing builds of these three:
IgnorePackage --foreign ttf-iosevka-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-quasi-proportional-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
IgnorePackage --foreign ttf-iosevka-term-custom-git # A slender monospace sans-serif and slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono.
AddPackage --foreign ttf-0xproto # An opinionated font for software engineers
AddPackage --foreign ttf-maple # Open source monospace/Nerd Font font with round corner for IDE and command line
AddPackage --foreign ttf-sudo # A font for programmers and command line users
AddPackage --foreign zen-browser-bin # Performance oriented Firefox-based web browser
  AddPackage --foreign vdhcoapp # Companion application for Video DownloadHelper browser add-on

# -- X11 Desktop --
AddPackage wmctrl # Control your EWMH compliant window manager from command line
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage xdotool # Command-line X11 automation tool

AddPackage --foreign espanso-x11 # Cross-platform Text Expander written in Rust (built for X11)
