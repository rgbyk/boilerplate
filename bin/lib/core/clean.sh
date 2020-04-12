#!/bin/sh
#
# ---------------------------------------------------------------------
# Clean Folders
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/core/clean.sh
# 2. $ ./bin/lib/core/clean.sh
# 3. $ "clean": "chmod +x ./bin/lib/core/clean.sh && ./bin/lib/core/clean.sh"
#

set -e

## ---------------------------------------------------------------------
## Configurations
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh

## START ------------------------------------

echo $white_ "... $ @rgbyk/clean.sh;" $reset

if [ -d $FOLDER_DIST ]; then
    echo $black "... $ rm -r \`$FOLDER_DIST\`" $reset
    rm -r $FOLDER_DIST &&
    sleep 0.1
fi

if [ -d $NODE_MODULES ]; then
    echo $black "... $ rm -r \`$NODE_MODULES\`" $reset
    rm -r $NODE_MODULES &&
    sleep 0.1
fi

if [ -d $FOLDER_JEKYLL ]; then
    echo $black "... $ rm -r \`$FOLDER_JEKYLL\`" $reset
    rm -r $FOLDER_JEKYLL &&
    sleep 0.1
fi

echo $green_ "... $ @rgbyk/clean.sh;\n" $reset

## END --------------------------------------