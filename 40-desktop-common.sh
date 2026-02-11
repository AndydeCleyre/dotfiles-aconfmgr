# -- Any Desktop --
AddPackage bluez-obex # Object Exchange daemon for sharing content
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
AddPackage earlyoom # Early OOM Daemon for Linux
  AddPackage systembus-notify # System bus notification daemon
AddPackage emptty # Dead simple CLI Display Manager on TTY
  AddPackage xorg-xauth # X.Org authorization settings program
AddPackage firewalld # Firewall daemon with D-Bus interface
  AddPackage python-pyqt6 # A set of Python bindings for the Qt6 toolkit
  CopyFile /etc/firewalld/zones/home.xml
AddPackage flameshot # Powerful yet simple to use screenshot software
AddPackage ghostty # Fast, native, feature-rich terminal emulator pushing modern features
AddPackage handbrake # Multithreaded video transcoder
AddPackage kodi # A software media player and entertainment hub for digital media (gl renderer)
AddPackage meld # Compare files, directories and working copies
AddPackage mpv # a free, open source, and cross-platform media player
  AddPackage mpv-mpris # MPRIS plugin for mpv
  AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage playerctl # mpris media player controller and lib for spotify, vlc, audacious, bmp, xmms2, and others.
AddPackage qbittorrent # An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar
AddPackage sublime-text # Sublime Text is a sophisticated text editor for code, markup and prose
AddPackage telegram-desktop # Official Telegram Desktop client
  AddPackage hunspell-en_us # US English hunspell dictionaries
AddPackage trash-cli # Command line trashcan (recycle bin) interface
AddPackage ttf-0xproto-nerd # Patched font 0xProto from nerd fonts library
AddPackage ttf-nerd-fonts-symbols-mono # High number of extra glyphs from popular 'iconic fonts' (monospace)
AddPackage vokoscreen # Easy to use screencast creator
  AddPackage gst-plugins-ugly # Multimedia graph framework - ugly plugins (x264)

# AddPackage --foreign arqiver # Simple Qt archive manager based on libarchive
AddPackage --foreign blobdrop-git # Drag and drop files directly out of the terminal
AddPackage --foreign cantata # Qt6 graphical client for Music Player Daemon (MPD), nullobsi fork
  AddPackage mopidy # An extensible music server written in Python
    AddPackage --foreign python-mopidy-tidal-git # TIDAL music service integration for Mopidy
    AddPackage --foreign mopidy-mpd # Mopidy extension for controlling playback from MPD clients
    # AddPackage --foreign mopidy-spotify-git # Mopidy extension for playing music from Spotify (git version)
    #   AddPackage --foreign gst-plugin-spotify-kingosticks # GStreamer Spotify plugin, for use with mopidy-spotify
# AddPackage --foreign factor # A general purpose, dynamically typed, stack-based programming language.
  AddPackage --foreign gtkglext # An OpenGL extension to GTK2.
AddPackage --foreign librewolf-bin # Community-maintained fork of Firefox, focused on privacy, security and freedom.
  AddPackage --foreign ff2mpv-rust # Native messaging host for ff2mpv written in Rust
  AddPackage --foreign vdhcoapp # Companion application for Video DownloadHelper browser add-on
AddPackage --foreign maplemono-ttf # Open source monospace font with round corner, ligatures and Nerd-Font for IDE and command line
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
AddPackage --foreign ttf-sudo # A font for programmers and command line users

# -- X11 Desktop --
AddPackage wmctrl # Control your EWMH compliant window manager from command line
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage xdotool # Command-line X11 automation tool
AddPackage xf86-input-libinput # Generic input driver for the X.Org server based on libinput
AddPackage xorg-server # Xorg X server

AddPackage --foreign espanso-x11 # Cross-platform Text Expander written in Rust (built for X11)

# -- Files --

# earlyoom
<<EOF cat >"$(GetPackageOriginalFile earlyoom /etc/default/earlyoom)"
EARLYOOM_ARGS="-m 5 -s 5 -r 3600 -n --avoid '(^|/)(init|systemd|Xorg|sshd)$'"
EOF

# emptty
sed -Ei \
  -e 's/^(# ?)?(DEFAULT_USER=).*/\2andy/' \
  -e 's/^(# ?)?(AUTOLOGIN=).*/\2true/' \
  -e 's/^(# ?)?(AUTOLOGIN_SESSION=).*/\2Plasma (X11)/' \
  -e 's/^(# ?)?(VERTICAL_SELECTION=).*/\2true/' \
  "$(GetPackageOriginalFile emptty /etc/emptty/conf)"
