#!/usr/bin/env bash
set -euo pipefail

sudo apt update
sudo apt install -y git python3-venv ffmpeg

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip

# CUDA 12.1 build for H100 on Lambda images.
pip install --upgrade "torch==2.5.0+cu121" "torchaudio==2.5.0+cu121" \
  --index-url https://download.pytorch.org/whl/cu121

pip install -e ".[dev]"
