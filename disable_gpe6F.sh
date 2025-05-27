#!/bin/bash

GPE_FILE="/sys/firmware/acpi/interrupts/gpe6F"

disable_gpe() {
    echo "Trying to disable $GPE_FILE..."
    echo disable | tee "$GPE_FILE" > /dev/null 2>/dev/null
}

# Try immediately
disable_gpe

# Wait and retry after 10 seconds
sleep 10
disable_gpe

# Wait and retry after 30 seconds (total ~40s after boot)
sleep 20
disable_gpe

# Final check
if grep -q "disabled" "$GPE_FILE"; then
    echo "GPE6F is now disabled. Success."
    exit 0
else
    echo "GPE6F is still enabled. Failure."
    exit 1
fi
