#!/usr/bin/env bash

# This command jumps into the compiled build directory, then syncs this content
# the chosen provider ( in this case, GreenQloud).
# It relies on s3cmd being installed, and passing in a custom config file

# run cactus build to create our compiled HTML site
cactus build

# then CD into the directory to run the sync
cd .build
export S3GQ_CONFIG="$HOME/.s3cfg.gq.cfg"
s3cmd sync --acl-public --guess-mime-type . s3://productscience.co.uk --follow-symlinks -c $S3GQ_CONFIG --verbose --check-md5
cd ..
