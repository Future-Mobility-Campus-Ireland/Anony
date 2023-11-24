#!/bin/bash

# Hardcoded directories and files 
ROOP_DIR="$HOME/roop/"
MASKING_FACE_PATH="$ROOP_DIR/test.jpg"
ANONY_VALIDATION_DIR="$HOME/face_recognition/examples/"

# Check if one argument is  provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 ORIGINAL_VIDEO_PATH"
    exit 1
fi

# Assign provided arguments
ORIGINAL_VIDEO_PATH="$1"

# Extract filename from the provided path
ORIGINAL_FILENAME=$(basename "$ORIGINAL_VIDEO_PATH")

# Define the prefix for the anonymized video
PREFIX="anony_"
ANONY_VIDEO_FILENAME="${PREFIX}${ORIGINAL_FILENAME}"
ANONY_VIDEO_PATH="${ROOP_DIR}${ANONY_VIDEO_FILENAME}"


# Navigate to the folder for the 'roop' project and run it
cd "$ROOP_DIR" || exit
pwd
python run.py -s "$MASKING_FACE_PATH" -t "$ORIGINAL_VIDEO_PATH" -o "$ANONY_VIDEO_PATH" --keep-fps --keep-frames --skip-audio --many-faces 

# After 'roop' is finished, navigate to the folder for the 'face_recognition' project
cd "$ANONY_VALIDATION_DIR" || exit
pwd
python facerec_comparison_between_two_video_files.py -v1 "$ORIGINAL_VIDEO_PATH" -v2 "$ANONY_VIDEO_PATH"

cd "$HOME" || exit


