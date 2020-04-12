#!/bin/sh
#
# ---------------------------------------------------------------------
# Run Folder Structure
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/core/checklist.sh
# 2. $ ./bin/lib/core/checklist.sh
#

set -e

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh

## START ------------------------------------

echo $white_ "... $ @rgbyk/checklist.sh;" $reset

if [ ! -d $FOLDER_DIST ]; then
    echo $black "... $ mkdir \`$FOLDER_DIST\`" $reset
    mkdir $FOLDER_DIST
    sleep 0.1
fi

if [ ! -d $FOLDER_DIST_ASSETS ]; then
    echo $black "... $ mkdir \`$FOLDER_DIST_ASSETS\`" $reset
    mkdir $FOLDER_DIST_ASSETS
    sleep 0.1
fi

if [ ! -d $FOLDER_DIST_ASSETS_CSS ]; then
    echo $black "... $ mkdir \`$FOLDER_DIST_ASSETS_CSS\`" $reset
    mkdir $FOLDER_DIST_ASSETS_CSS
    sleep 0.1
fi

if [ ! -d $FOLDER_DIST_ASSETS_JS ]; then
    echo $black "... $ mkdir \`$FOLDER_DIST_ASSETS_JS\`" $reset
    mkdir $FOLDER_DIST_ASSETS_JS
    sleep 0.1
fi

if [ ! -d $FOLDER_DIST_ASSETS_JS_BUNDLE ]; then
    echo $black "... $ mkdir \`$FOLDER_DIST_ASSETS_JS_BUNDLE\`" $reset
    mkdir $FOLDER_DIST_ASSETS_JS_BUNDLE
    sleep 0.1
fi

echo $green_ "... $ @rgbyk/checklist.sh;\n" $reset

## END --------------------------------------