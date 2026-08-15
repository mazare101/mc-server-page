#!/usr/bin/env bash
set -euo pipefail
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
systemd-run --user --scope --unit=mcserver-start \
  python3 /home/mazare/VScodium/mc-server-panel/start_server.py
