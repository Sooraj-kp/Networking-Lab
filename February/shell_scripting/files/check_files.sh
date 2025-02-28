#!/bin/bash
if [ $# -eq 0 ]; then
  echo "No file provided. Please specify a file to check."
  exit 1
fi
file="$1"
file_type=$(file --mime-type -b "$file")

case $file_type in
  text/*)
    echo "The file '$file' is a text file."
    ;;
  image/*)
    echo "The file '$file' is an image file."
    ;;
  audio/*)
    echo "The file '$file' is an audio file."
    ;;
  video/*)
    echo "The file '$file' is a video file."
    ;;
  application/pdf)
    echo "The file '$file' is a PDF document."
    ;;
  *)
    echo "The file type of '$file' is unknown."
    ;;
esac
