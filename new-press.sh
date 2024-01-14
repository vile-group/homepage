#!/bin/bash

# Directory of your Hugo site
HUGO_SITE_DIR="$(pwd)"

# Navigate to the /press/ directory
cd "$HUGO_SITE_DIR/content/press"

# Determine the next file number
file_count=$(ls | wc -l)
new_num=$((file_count + 1))

echo "New file number: $new_num"

# Format the new file name
new_file_name=$(printf "%05d.md" $new_num)

# Navigate back to Hugo site directory
cd "$HUGO_SITE_DIR"

# Create new content using Hugo
hugo new "content/press/$new_file_name"
