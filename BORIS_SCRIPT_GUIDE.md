# Шпаргалка: запуск автоскрипта на новом поде

1. Запустить новый под → дождаться Running / Ready.
2. Открыть Web Terminal.
3. Клонировать репозиторий:
   git clone https://github.com/lenivez/wanvideo-Boris-autoinstall
4. Скопировать скрипты:
   cp /wanvideo-Boris-autoinstall/install_models.sh /workspace/
   cp /wanvideo-Boris-autoinstall/startup.sh /workspace/
5. Сделать исполняемыми:
   chmod +x /workspace/install_models.sh
   chmod +x /workspace/startup.sh
6. Запустить:
   bash /workspace/startup.sh
7. Открыть ComfyUI:
   порт 3000 → ComfyUI Web UI
