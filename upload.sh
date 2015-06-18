#!/bin/bash
FS=$(echo -en "\n\b")
cd files.glencampbell.co
for file in *; do
  echo Uploading $file...
  aws s3 cp "$file" s3://files.glencampbell.co --cache-control max-age=31536000
done
