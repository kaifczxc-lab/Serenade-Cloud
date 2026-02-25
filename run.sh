#!/bin/bash
LATEST_FILE=$(ls -t *.serenade 2>/dev/null | head -1)
FILE_TO_RUN=${LATEST_FILE:-main.serenade}
echo "Running: $FILE_TO_RUN"
chmod +x ./SerenaBuilder_linux 2>/dev/null
./SerenaBuilder_linux "$FILE_TO_RUN"
if [ -f "./serena_out" ]; then
    chmod +x ./serena_out
    ./serena_out
    rm ./serena_out
else
    echo "Error: Build failed for $FILE_TO_RUN"
fi
