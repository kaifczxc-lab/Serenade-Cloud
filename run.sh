#!/bin/bash

# Ensure the binary is executable
chmod +x ./SerenaBuilder 2>/dev/null

# Check binary exists
if [ ! -f ./SerenaBuilder ]; then
    echo "[ERROR] SerenaBuilder binary not found."
    echo "Please upload the SerenaBuilder Linux binary to the project root."
    exit 1
fi

# Transpile and run
./SerenaBuilder main.serenade && ./serena_out
