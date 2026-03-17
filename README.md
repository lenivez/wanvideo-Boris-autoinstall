# wanvideo-Boris-autoinstall

Автоматическая установка моделей WanVideo / InfiniteTalk / I2V / Lipsync при запуске RunPod.

## Как это работает

При старте пода RunPod запускает файл `/workspace/startup.sh`.

Этот файл:

1. Клонирует или обновляет репозиторий:
   https://github.com/lenivez/wanvideo-Boris-autoinstall

2. Запускает скрипт:
   `install_models.sh`

3. Скрипт скачивает модели в нужные папки:
   `/workspace/ComfyUI/models/...`

4. После установки автоматически запускается ComfyUI.

## Как использовать в RunPod

1. В Pod Template укажите команду запуска:
/workspace/startup.sh

2. После первого запуска выполните в терминале:
chmod +x /workspace/startup.sh

3. Теперь при каждом запуске пода:
   - репозиторий обновится
   - модели скачаются
   - ComfyUI запустится автоматически

## Структура репозитория

- `install_models.sh` — основной скрипт загрузки моделей  
- `startup.sh` — автозапуск при старте пода  
- `README.md` — описание проекта



