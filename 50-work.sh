AddPackage ansible-language-server # Ansible Language Server
AddPackage docker # Pack, ship and run any application as a lightweight container
AddPackage docker-compose # Fast, isolated development environments using Docker
AddPackage kubectl # A command line tool for communicating with a Kubernetes API server
AddPackage minikube # A tool that makes it easy to run Kubernetes locally
    AddPackage linux-zen-headers # Headers and scripts for building modules for the Linux ZEN kernel
  AddPackage virtualbox # Powerful x86 virtualization for enterprise as well as home use
AddPackage podman-compose # A script to run docker-compose.yml using podman

AddPackage --foreign docker-rootless-extras # Extras to run docker as non-root.
AddPackage --foreign slack-desktop # Slack Desktop (Beta) for Linux
AddPackage --foreign zoom # Video Conferencing and Web Conferencing Service

# https://wiki.archlinux.org/title/Docker#Enable_native_overlay_diff_engine
printf '%s\n' 'options overlay metacopy=off redirect_dir=off' >"$(CreateFile /etc/modprobe.d/disable-overlay-redirect-dir.conf 640)"
