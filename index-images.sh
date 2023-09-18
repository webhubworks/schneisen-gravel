#!/bin/bash

# Checks if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Display script usage
display_help() {
  echo "Usage: $0 [OPTION]... [DIRECTORY]"
  echo "Find all image files in a given directory and output their details in JSON format."
  echo ""
  echo "Options:"
  echo "  -o FILE     Write output to FILE instead of stdout."
  echo "  -h          Display this help and exit."
  echo ""
  echo "Examples:"
  echo "  $0 /path/to/search            # Print details to stdout"
  echo "  $0 -o output.json /path/to/search  # Save details to output.json"
  exit 1
}

# Check for dependencies
if ! command_exists identify; then
  echo "You need to install ImageMagick for this script to work."
  exit 1
fi
if ! command_exists jq; then
  echo "You need to install jq for JSON processing."
  exit 1
fi
if ! command_exists exiftool; then
  echo "You need to install exiftool for reading EXIF data."
  exit 1
fi

OUTPUT=""
while getopts ":o:h" opt; do
  case $opt in
    o) OUTPUT="$OPTARG";;
    h) display_help;;
    \?) echo "Invalid option -$OPTARG" >&2; display_help; exit 1;;
  esac
done
shift $((OPTIND -1))

# Define the directory to search
DIR="${1:-.}"

# Get the image details
find "$DIR" -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.gif -o -iname \*.bmp -o -iname \*.tif -o -iname \*.tiff \) |
while read -r img; do
  # Extract details using ImageMagick's identify
  height=$(identify -ping -format '%h' "$img")
  width=$(identify -ping -format '%w' "$img")
  creation_date=$(exiftool -DateTimeOriginal -d "%Y-%m-%dT%H:%M:%S" "$img" | awk -F': ' '{print $2}')
  filename=$(basename -- "$img")
  extension="${filename##*.}"
  filename="${filename%.*}"

  # Convert to JSON format
  echo "{ \"filename\": \"$filename.$extension\", \"extension\": \"$extension\", \"width\": \"$width\", \"height\": \"$height\", \"creation_date\": \"$creation_date\" }"
done | jq -s '.' > "${OUTPUT:-/dev/stdout}"

