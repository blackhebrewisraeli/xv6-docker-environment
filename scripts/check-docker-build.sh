#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="xv6-maman02"

echo "[1/3] Building Docker image: ${IMAGE_NAME}"
docker build -t "${IMAGE_NAME}" .

echo "[2/3] Checking that /xv6 exists inside the container"
docker run --rm "${IMAGE_NAME}" test -d /xv6

echo "[3/3] Checking xv6 Makefile exists"
docker run --rm "${IMAGE_NAME}" test -f /xv6/Makefile

echo "Docker environment validation completed successfully."
