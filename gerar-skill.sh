#!/usr/bin/env bash
# Monta dist/conciliadora-marca.zip (SKILL.md + references/) a partir da base de conhecimento,
# pronto para enviar em Configurações da organização → Skills.
set -euo pipefail
cd "$(dirname "$0")"

SKILL_DIR="03-skill-organizacional/conciliadora-marca"
BUILD="dist/build/conciliadora-marca"

rm -rf dist
mkdir -p "$BUILD/references"
cp "$SKILL_DIR/SKILL.md" "$BUILD/"
cp 02-projeto-organizacional/conhecimento/*.md "$BUILD/references/"

(cd dist/build && zip -qr ../conciliadora-marca.zip conciliadora-marca)
rm -rf dist/build
echo "Gerado: dist/conciliadora-marca.zip"
