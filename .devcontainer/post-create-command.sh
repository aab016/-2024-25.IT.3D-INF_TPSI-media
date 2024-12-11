#!/bin/bash

echo "#### post-create-command.sh: $(date) - start"

set -e

env

me=$(basename "$0")

echo "#### post-create-command.sh: $(date) - me is $(me)"

pip install yt-dlp

yt-dlp -U

sudo apt-get update

sudo apt-get install -y ffmpeg

echo "#### post-create-command.sh: $(date) - end"
