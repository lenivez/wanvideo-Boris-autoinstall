#!/bin/bash
set -e

echo "=== Wan Video — установка моделей (Boris Edition) ==="

echo "=== Запуск install_models.sh ==="

bash "$(dirname "$0")/install_models.sh"

echo "=== Все модели Wan Video успешно загружены! ==="
