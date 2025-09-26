AddPackage networkmanager # Network connection manager and user applications
  AddPackage iwd # Internet Wireless Daemon

printf '%s\n' '[device]' 'wifi.backend=iwd' >"$(CreateFile /etc/NetworkManager/conf.d/wifi_backend.conf 640)"

# -- Disable power-saving, for stability, and to prevent issues after resume --

printf '%s\n' 'options iwlmvm power_scheme=1'       >"$(CreateFile /etc/modprobe.d/iwlmvm.conf 640)"

printf '%s\n' '[DriverQuirks]' 'PowerSaveDisable=*' >"$(CreateFile /etc/iwd/main.conf 640)"

# -- realtek wifi --
# <<EOF cat >"$(CreateFile /etc/modprobe.d/70-rtw89.conf 640)"
# options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss=y
# options rtw89pci disable_aspm_l1=y disable_aspm_l1ss=y
# options rtw89_core disable_ps_mode=y
# options rtw89core disable_ps_mode=y
# EOF

