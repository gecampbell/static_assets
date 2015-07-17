#!/bin/bash
FS=$(echo -en "\n\b")
cd files.glencampbell.co
aws s3 sync . s3://files.glencampbell.co --cache-control max-age=31536000
