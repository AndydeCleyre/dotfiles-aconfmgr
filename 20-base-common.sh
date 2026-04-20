# -- Base --
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
# AddPackage linux-firmware # Firmware files for Linux
  AddPackage linux-firmware-amdgpu # Firmware files for Linux - Firmware for AMD Radeon GPUs
  AddPackage linux-firmware-intel # Firmware files for Linux - Firmware for Intel devices
AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage zram-generator # Systemd unit generator for zram devices

# -- Arch Helpers --
AddPackage arch-wiki-lite # Arch Wiki without HTML. 1/9 as big, easily searched & viewable on console
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage kernel-modules-hook # Keeps your system fully functional after a kernel upgrade
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems (paccache.timer, pacdiff)
AddPackage pkgfile # alpm .files metadata explorer (command-not-found)
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper
AddPackage --foreign spleen-font # Monospaced bitmap fonts for user interface including console (OTB, OTF, PSFU)

# -- Files --
CreateLink /etc/localtime /usr/share/zoneinfo/America/New_York
CreateLink /etc/os-release /usr/lib/os-release

CopyFile /etc/pacman.conf

printf '%s\n' 'LANG=en_US.UTF-8'            >"$(CreateFile /etc/locale.conf)"
printf '%s\n' 'blacklist pcspkr'            >"$(CreateFile /etc/modprobe.d/nobeep.conf 640)"
printf '%s\n' 'andy ALL=(ALL) ALL'          >"$(CreateFile /etc/sudoers.d/00_andy 440)"
printf '%s\n' 'kernel.sysrq = 1'            >"$(CreateFile /etc/sysctl.d/90-sysrq.conf 640)"

printf '%s\n' '--country US,CA'   >>"$(GetPackageOriginalFile reflector /etc/xdg/reflector/reflector.conf)"
printf '%s\n' "PACCACHE_ARGS='k1'" >"$(GetPackageOriginalFile pacman-contrib /etc/conf.d/pacman-contrib)"

# mkinitcpio
sed -Ei \
  's/^(HOOKS=\().*(\))$/\1systemd autodetect microcode modconf keyboard sd-vconsole block sd-encrypt filesystems fsck\2/g' \
  "$(GetPackageOriginalFile mkinitcpio /etc/mkinitcpio.conf)"

# pacman: makepkg
sed -Ei \
  -e 's/(-march=)[^ ]+/\1native/g' \
  -e 's/-mtune=generic //g' \
  -e 's/-[fm]no-omit-(leaf-)?frame-pointer//g' \
  -e 's/^#?(MAKEFLAGS=")[^"]*(")/\1--jobs=$(nproc)\2/g' \
  -e 's/^(OPTIONS=\(.*) docs (.*)/\1 !docs \2/g' \
  -e 's/^(OPTIONS=\(.*) debug (.*)/\1 !debug \2/g' \
  -e 's/^(COMPRESSZST=\(.*)( -\))$/\1 --auto-threads=logical\2/g' \
  -e "s/^((PKG|SRC)EXT='\.)(pkg|src).*(')/\1\3.tar\4/g" \
  "$(GetPackageOriginalFile pacman /etc/makepkg.conf)"

sed -Ei \
  's/^(RUSTFLAGS=").*(")$/\1-O -C target-cpu=native\2/g' \
  "$(GetPackageOriginalFile pacman /etc/makepkg.conf.d/rust.conf)"

sed -Ei \
  -e 's/(-march=)[^ ]+/\1native/g' \
  -e 's/-mtune=generic //g' \
  -e 's/-[fm]no-omit-(leaf-)?frame-pointer//g' \
  "$(GetPackageOriginalFile pacman /etc/makepkg.conf.d/fortran.conf)"

# systemd: boot
<<EOF cat >"$(CreateFile /etc/pacman.d/hooks/95-systemd-boot.hook 640)"
[Trigger]
Type = Package
Operation = Upgrade
Target = systemd

[Action]
Description = Gracefully upgrading systemd-boot...
When = PostTransaction
Exec = /usr/bin/systemctl restart systemd-boot-update.service
EOF
