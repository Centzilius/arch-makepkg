FROM archlinux:latest
RUN pacman -Syu --noconfirm base-devel git
RUN useradd -m -s /bin/bash builder
RUN echo "builder ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
USER builder
