#!/bin/bash
set -e

cd "$(dirname "$0")/.."

for f in Akenzhan_Assanali_info.txt config/app.conf app/app.py Dockerfile docker-compose.yml; do
    if [ ! -f "$f" ]; then
        echo "FAIL: $f not found"
        exit 1
    fi
    echo "OK: $f"
done

grep -q "Student ID: 38330" Akenzhan_Assanali_info.txt
echo "OK: student info is correct"

bash -n scripts/Akenzhan_Assanali_system.sh
echo "OK: bash script syntax"

echo "All tests passed"
