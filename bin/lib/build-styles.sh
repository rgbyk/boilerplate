#!/bin/sh

#######################################################################
## @rgbyk/boilerplate => build-styles.sh
#######################################################################

# 1. $ chmod +x ./bin/lib/build-styles.sh
# 2. $ ./bin/lib/build-styles.sh
# 3. $ "build-styles": "chmod +x ./bin/lib/build-styles.sh && ./bin/lib/build-styles.sh"

set -e

. ./bin/lib/config.sh

# echo $white_ "... $ build-styles.sh;" $reset

# echo $black_ "... $ sass $FILE_STYLE;" $reset
# sass $FOLDER_SRC_SCSS/$FILE_STYLE.scss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css --no-source-map --charset --style=compressed

# # echo $black_ "... $ postcss $FILE_STYLE;" $reset
# postcss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css -o $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css

# if [ -d $FOLDER_JEKYLL_SASS ]; then
#     cp $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css $FOLDER_JEKYLL_SASS/_color.scss
# fi

# echo $green_ "... $ build-styles.sh;\n" $reset

sass $FOLDER_SRC_SCSS/style.rgb.000.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.000.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.001.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.001.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.010.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.010.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.011.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.011.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.100.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.100.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.101.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.101.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.110.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.110.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.rgb.111.scss $FOLDER_DIST_ASSETS_CSS/style.rgb.111.css --no-source-map --charset --style=compressed

sass $FOLDER_SRC_SCSS/style.ryb.000.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.000.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.001.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.001.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.010.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.010.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.011.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.011.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.100.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.100.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.101.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.101.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.110.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.110.css --no-source-map --charset --style=compressed
sass $FOLDER_SRC_SCSS/style.ryb.111.scss $FOLDER_DIST_ASSETS_CSS/style.ryb.111.css --no-source-map --charset --style=compressed

# postcss $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.css -o $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css
# cp $FOLDER_DIST_ASSETS_CSS/$FILE_STYLE.min.css $FOLDER_JEKYLL_SASS/_color.scss