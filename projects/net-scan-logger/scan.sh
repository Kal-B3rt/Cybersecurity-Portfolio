#!/usr/bin/env bash

set -euo pipefail

DEFAULT_SUBNET="192.168.1.0/24"
SUBNET="${1:-$DEFAULT_SUBNET}"

mkdir -p scans

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTPUT="scans/scan_${TIMESTAMP}.txt"

echo "======================"
echo "Net Scan Logger"
echo "Target subnet: ${SUBNET}"
echo "Output file: ${OUTPUT}"
echo "Start time: ${TIMESTAMP}"
echo "======================"

echo "[1/3] Starting Nmap discovery scan..."
docker run --rm instrumentisto/nmap -sn --host-timeout 3s "${SUBNET}" > "${OUTPUT}"

echo "[2/3] Scan Complete."

HOSTS_UP=$(grep -c "Host is up" "${OUTPUT}" || true)
echo "[3/3] Hosts up found: ${HOSTS_UP}"

echo
echo "Done. Results saved to ${OUTPUT}"
