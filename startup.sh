#!/bin/bash
set -e

echo "== Запуск автозагрузки моделей =="

export HF_TOKEN="${HF_TOKEN}"

bash /workspace/install_models.sh | tee /workspace/model_download.log

echo "== Запуск ComfyUI =="

cd /workspace/ComfyUI
python3 main.py

