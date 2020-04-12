#!/bin/sh
#
# ---------------------------------------------------------------------
# Styles
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/styles.sh
# 2. $ ./bin/lib/styles.sh
# 3. $ "styles": "chmod +x ./bin/lib/styles.sh && ./bin/lib/styles.sh"
#

set -e

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh
. ./bin/lib/core/checklist.sh

## START ------------------------------------

echo $white_ "... $ @rgbyk/styles.sh;" $reset

echo $black_ "... $ running sass on $FOLDER_SRC_SCSS/$FILE_STYLE.scss;" $reset
sass $FOLDER_SRC_SCSS/$FILE_STYLE.scss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css --no-source-map --charset --style=expanded

echo $black_ "... $ running postcss on $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css;" $reset
postcss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css -o $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css

if [ -d $FOLDER_JEKYLL_SASS ]; then
    cp $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css $FOLDER_JEKYLL_SASS/_color.scss
fi

echo $green_ "... $ @rgbyk/styles.sh;\n" $reset

## END --------------------------------------
