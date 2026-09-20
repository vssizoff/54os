#!/usr/bin/env bash
set -Eeuo pipefail

mkdir -p /etc/skel
echo "test" >/etc/skel/test

FISH=/bin/fish

usermod --shell "$FISH" root
useradd -D -s "$FISH"

systemctl enable sddm
