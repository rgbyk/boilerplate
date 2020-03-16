#!/bin/sh

#######################################################################
## @rgbyk/boilerplate => build-styles.sh
#######################################################################

# 1. $ chmod +x ./bin/lib/build-styles.sh
# 2. $ ./bin/lib/build-styles.sh
# 3. $ "build-styles": "chmod +x ./bin/lib/build-styles.sh && ./bin/lib/build-styles.sh"

set -e

. ./bin/lib/config.sh

echo $white_ "... $ build-styles.sh;" $reset

echo $black_ "... $ sass $FILE_STYLE;" $reset
sass $FOLDER_SRC_SCSS/$FILE_STYLE.scss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css --no-source-map --charset --style=expanded

echo $black_ "... $ postcss $FILE_STYLE;" $reset
postcss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css -o $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css

if [ -d $FOLDER_JEKYLL_SASS ]; then
    cp $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css $FOLDER_JEKYLL_SASS/_color.scss
fi

echo $green_ "... $ build-styles.sh;\n" $reset