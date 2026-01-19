#!/usr/bin/env bash
set -euo pipefail

if [ -f venv/bin/activate ]; then
  source venv/bin/activate
fi

: "${GRADIO_SERVER_NAME:=0.0.0.0}"
: "${GRADIO_SERVER_PORT:=7861}"
: "${HF_REPO_ID:=openbmb/VoxCPM1.5}"

export GRADIO_SERVER_NAME GRADIO_SERVER_PORT HF_REPO_ID

python app.py --host "${GRADIO_SERVER_NAME}" --port "${GRADIO_SERVER_PORT}"
