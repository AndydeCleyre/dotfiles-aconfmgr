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
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems (paccache.timer, pacdiff)
AddPackage pkgfile # alpm .files metadata explorer (command-not-found)
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper
AddPackage --foreign spleen-font # Monospaced bitmap fonts for user interface including console (OTB, OTF, PSFU)

# -- Files --
CreateLink /etc/localtime /usr/share/zoneinfo/America/New_York
CreateLink /etc/os-release ../usr/lib/os-release

CopyFile /etc/makepkg.conf
CopyFile /etc/makepkg.conf.d/rust.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/pacman.conf

printf '%s\n' 'LANG=en_US.UTF-8'                        >"$(CreateFile /etc/locale.conf)"
printf '%s\n' '[device]' 'wifi.backend=iwd'             >"$(CreateFile /etc/NetworkManager/conf.d/wifi_backend.conf 640)"
printf '%s\n' 'andy ALL=(ALL) ALL'                      >"$(CreateFile /etc/sudoers.d/00_andy 440)"
printf '%s\n' 'blacklist pcspkr'                        >"$(CreateFile /etc/modprobe.d/nobeep.conf 640)"
printf '%s\n' '--country US,CA' >>"$(GetPackageOriginalFile reflector /etc/xdg/reflector/reflector.conf)"

# -- realtek wifi --
# -- Disable power-saving mode for wifi, for stability --
# <<EOF cat >"$(CreateFile /etc/modprobe.d/70-rtw89.conf 640)"
# options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss=y
# options rtw89pci disable_aspm_l1=y disable_aspm_l1ss=y
# options rtw89_core disable_ps_mode=y
# options rtw89core disable_ps_mode=y
# EOF
