#!/bin/sh

#######################################################################
## @rgbyk/boilerplate => clean.sh
#######################################################################

# 1. $ chmod +x ./bin/lib/clean.sh
# 2. $ ./bin/lib/clean.sh
# 3. $ "clean": "chmod +x ./bin/lib/clean.sh && ./bin/lib/clean.sh"

set -e

. ./bin/lib/config.sh

echo $white_ "... $ clean.sh;" $reset

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

echo $green_ "... $ clean.sh;\n" $reset