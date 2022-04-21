FROM archlinux:latest
RUN pacman -Syu --noconfirm base-devel git rsync
RUN useradd -m -s /bin/bash builder
RUN echo "builder ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
