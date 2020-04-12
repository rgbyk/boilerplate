#!/bin/sh
#
# ---------------------------------------------------------------------
# Scripts
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/scripts.sh
# 2. $ ./bin/lib/scripts.sh
# 3. $ "scripts": "chmod +x ./bin/lib/scripts.sh && ./bin/lib/scripts.sh"
#

set -e

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh
. ./bin/lib/core/checklist.sh

## START ------------------------------------

echo $white_ "... $ @rgbyk/scripts.sh;" $reset

if [ -d $FOLDER_SRC_JS_VENDORS ]; then
    echo $black "... $ bundle $FOLDER_SRC_JS_VENDORS" $reset
    terser-dir $FOLDER_SRC_JS_VENDORS -o $FOLDER_DIST_ASSETS_JS_BUNDLE/file0.js &>/dev/null &
    sleep 0.5
fi

if [ -d $FOLDER_SRC_JS_PLUGINS ]; then
    echo $black "... $ bundle $FOLDER_SRC_JS_PLUGINS" $reset
    terser-dir $FOLDER_SRC_JS_PLUGINS -o $FOLDER_DIST_ASSETS_JS_BUNDLE/file1.js &>/dev/null &
    sleep 0.5
fi

if [ -d $FOLDER_SRC_JS_FUNCTIONS ]; then
    echo $black "... $ bundle $FOLDER_SRC_JS_FUNCTIONS" $reset
    terser-dir $FOLDER_SRC_JS_FUNCTIONS -o $FOLDER_DIST_ASSETS_JS_BUNDLE/file2.js &>/dev/null &
    sleep 0.5
fi

echo $black "... $ bundle $FOLDER_SRC_JS/app.js;" $reset
terser $FOLDER_SRC_JS/app.js -o $FOLDER_DIST_ASSETS_JS_BUNDLE/file3.js &>/dev/null  &
sleep 0.5

echo $black "... $ bundle $FOLDER_DIST_ASSETS_JS_BUNDLE/*;" $reset
terser-dir $FOLDER_DIST_ASSETS_JS_BUNDLE -o $FOLDER_DIST_ASSETS_JS/app.js &>/dev/null  &
sleep 2

echo $black "... $ babel $FOLDER_DIST_ASSETS_JS/app.js;" $reset
babel $FOLDER_DIST_ASSETS_JS/app.js --out-dir $FOLDER_DIST_ASSETS_JS &>/dev/null &
sleep 0.5

echo $black "... $ terser $FOLDER_DIST_ASSETS_JS/app.js;" $reset
terser $FOLDER_DIST_ASSETS_JS/app.js -o $FOLDER_DIST_ASSETS_JS/app.min.js -c -m &>/dev/null &

if [ -d $FOLDER_JEKYLL_ASSETS_JS ]; then
    sleep 1
    cp $FOLDER_DIST_ASSETS_JS/app.min.js $FOLDER_JEKYLL_ASSETS_JS
fi

echo $green_ "... $ @rgbyk/scripts.sh\n" $reset

## END --------------------------------------