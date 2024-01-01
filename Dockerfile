FROM archlinux:latest
RUN echo -e "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
RUN pacman-key --init && \
    pacman -Sy --noconfirm --needed archlinux-keyring
RUN pacman -Syu --noconfirm base-devel git rsync openssh
RUN useradd -m -s /bin/bash builder
RUN echo "builder ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
