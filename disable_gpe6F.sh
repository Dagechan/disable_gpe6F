#!/bin/bash

GPE_FILE="/sys/firmware/acpi/interrupts/gpe6F"
MAX_RETRIES=10
RETRY_INTERVAL=1

for i in $(seq 1 $MAX_RETRIES); do
    if echo disable | tee "$GPE_FILE" > /dev/null 2>/dev/null; then
	echo "GPE6F disable successfully."
	exit 0
    else
	echo "Attempt $i: Failed to disable GPE6F, retrying in $RETRY_INTERVAL seconds..."
        sleep $RETRY_INTERVAL
    fi
done

echo "Failed to disable GPE6F after $MAX_RETRIES attempts."
exit 1
