#Net Scanner Logger

A lightweigh, Docker-based network discovery automation tool written in Bash. Created and used on Rasberri Pi 4.

## Overview

Net Scan Logger performs an Nmap ping scan ('-sn') against a target subnet and saves the results with a timestamp for historical reference.

This project demostrates:

- Docker containter usage for security tooling isolation
- Bash scripting with safe mode ('set -euo pipefail')
- Argument handling with default faillback values
- Automated timestamped loggin
- Defensive scription practices
- Controlled execution with timeout handlinjg.

## Requirements

- Ubuntu Server (or compatible Linux system)
- Docker installed and operation
- Network access to target subnet

## Usage

Run using default subnet (192.168.1.0/24)

./scan.sh

Run using custom subnet

./scan.sh 10.0.0.0/24

## Output

Scan results are stored in:
scans/scan_YYYY-MM-DD_HH-MM-SS.txt



