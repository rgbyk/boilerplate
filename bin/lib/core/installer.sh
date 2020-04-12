#!/bin/sh
#
# ---------------------------------------------------------------------
# Install RGB/YK Boilerplate
# ---------------------------------------------------------------------
#
# 1. $ chmod +x  ./bin/lib/core/install.sh
# 2. $ ./bin/lib/core/install.sh
# 3. $ "install": "chmod +x ./bin/lib/core/install.sh && ./bin/lib/core/install.sh"
#

set -e

## ---------------------------------------------------------------------
## Set File Permissions
## ---------------------------------------------------------------------

chmod +x ./bin/lib/core/config.sh
chmod +x ./bin/lib/core/branding.sh
chmod +x ./bin/lib/core/checklist.sh
chmod +x ./bin/lib/core/kill.sh
chmod +x ./bin/lib/core/unpack.sh

chmod +x ./bin/lib/scripts.sh
chmod +x ./bin/lib/styles.sh

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh
. ./bin/lib/core/branding.sh

## ---------------------------------------------------------------------
## Start Installation
## ---------------------------------------------------------------------

printf "%s Do you wish to install $_name (v$_version)? %s" $white_ $reset
read answer
echo ""

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo $white_ "... $ install.sh;\n" $reset

    . ./bin/lib/core/kill.sh
    . ./bin/lib/core/checklist.sh

    if [ -d $NODE_MODULES ]; then
        echo $black "... $ rm -r \`$NODE_MODULES\`" $reset
        rm -r $NODE_MODULES        
        sleep 1

        echo $black "... $ npm install; break;" $reset
        npm install &>/dev/null; break;
        echo ""
        echo $green_ "... $ install.sh;\n" $reset
    else
        echo $black "... $ npm install; break;" $reset
        echo ""
        npm install &>/dev/null; break;
        echo ""
    fi
    echo $green_ "... $ install.sh;\n" $reset
else
    echo $black_ "... $ exit \n" $reset
fi