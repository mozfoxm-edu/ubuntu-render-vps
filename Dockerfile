FROM ubuntu:22.04

# Update & install basic tools
RUN apt update && apt install -y \
    curl wget nano git net-tools iputils-ping htop

# Tambah user non-root (aman untuk VPS publik)
RUN useradd -m render && echo "render:render" | chpasswd && adduser render sudo

# Set working directory
WORKDIR /home/render

# Jalankan terminal interaktif
CMD ["sleep", "infinity"]
