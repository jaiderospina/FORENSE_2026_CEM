#!/usr/bin/env bash
set -euo pipefail

echo "[+] Reparando repositorios de Kali..."
cat <<'SRC' | sudo tee /etc/apt/sources.list >/dev/null
deb https://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware
SRC

sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
sudo apt update

echo "[+] Instalando dependencias base..."
sudo apt install -y python3 python3-venv python3-pip git ca-certificates

TOOLS_DIR="$HOME/tools"
VENV_DIR="$TOOLS_DIR/vol3_env"
mkdir -p "$TOOLS_DIR"

if [ ! -d "$VENV_DIR" ]; then
  echo "[+] Creando entorno virtual en $VENV_DIR"
  python3 -m venv "$VENV_DIR"
fi

source "$VENV_DIR/bin/activate"

echo "[+] Actualizando pip..."
pip install --upgrade pip setuptools wheel

echo "[+] Instalando Volatility 3..."
pip install --upgrade volatility3

echo "[+] Verificando instalación..."
python3 -m volatility3 --help >/dev/null

echo
cat <<MSG
[OK] Volatility 3 quedó instalado correctamente.

Para usarlo en nuevas sesiones:
  source "$VENV_DIR/bin/activate"

Prueba rápida:
  python3 -m volatility3 --help

Ejemplo de uso:
  python3 -m volatility3 -f memoria.raw windows.info
MSG
