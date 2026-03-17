#!/bin/bash

echo "=== wanvideo-autoinstall: старт ==="

cd /workspace

# 1. Клонируем или обновляем репозиторий
if [ ! -d "wanvideo-Boris-autoinstall" ]; then
    git clone https://github.com/lenivez/wanvideo-Boris-autoinstall.git
else
    cd wanvideo-Boris-autoinstall
    git pull
    cd ..
fi

# 2. Запускаем установку моделей
bash /workspace/wanvideo-Boris-autoinstall/install_models.sh

# 3. Запускаем ComfyUI
bash /workspace/ComfyUI/start.sh
