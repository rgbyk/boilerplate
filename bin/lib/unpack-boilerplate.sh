#!/bin/sh

#######################################################################
## @rgbyk/boilerplate => unpack-boilerplate.sh
#######################################################################

# 1. $ chmod +x ./bin/lib/unpack-boilerplate.sh
# 2. $ ./bin/lib/unpack-boilerplate.sh
# 3. $ "unpack-boilerplate": "chmod +x ./bin/lib/unpack-boilerplate.sh && ./bin/lib/unpack-boilerplate.sh"

set -e

. ./bin/lib/config.sh
. ./bin/lib/branding.sh
. ./bin/lib/checks.sh

if ! gem spec jekyll > /dev/null 2>&1; then
    echo $red_ "Jekyll is not installed on your machine"
    echo "" $reset
    echo $black "Requirements:"
    echo "    • Ruby (https://www.ruby-lang.org/en/downloads/)"
    echo "    • GCC (https://gcc.gnu.org/install/)"
    echo "    • Make (https://www.gnu.org/software/make/)"
    echo "" $reset
    echo $black "Read more at https://jekyllrb.com/docs/installation/"
    echo "" $reset
else
    echo $white_ "... $ unpack-boilerplate.sh;" $reset

    if [ ! -d $FOLDER_JEKYLL ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL\`" $reset
        mkdir $FOLDER_JEKYLL
        . $FOLDER_BIN/jekyll/root/config.sh > $FOLDER_JEKYLL/_config.yml
        . $FOLDER_BIN/jekyll/root/gemfile.sh > $FOLDER_JEKYLL/Gemfile
        . $FOLDER_BIN/jekyll/root/index.sh > $FOLDER_JEKYLL/index.html
        . $FOLDER_BIN/jekyll/root/sitemap.sh > $FOLDER_JEKYLL/sitemap.xml
        . $FOLDER_BIN/jekyll/root/manifest.sh > $FOLDER_JEKYLL/manifest.json
        sleep 0.1
    fi

    if [ ! -d $FOLDER_JEKYLL_ASSETS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_ASSETS\`" $reset
        mkdir $FOLDER_JEKYLL_ASSETS
    fi

    if [ ! -d $FOLDER_JEKYLL_ASSETS_CSS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_ASSETS_CSS\`" $reset
        mkdir $FOLDER_JEKYLL_ASSETS_CSS
        . $FOLDER_BIN/jekyll/css/main.sh > $FOLDER_JEKYLL_ASSETS_CSS/main.scss
    fi

    if [ ! -d $FOLDER_JEKYLL_SASS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_SASS\`" $reset
        mkdir $FOLDER_JEKYLL_SASS

        mkdir $FOLDER_JEKYLL_SASS/base
        touch $FOLDER_JEKYLL_SASS/base/_index.scss

        mkdir $FOLDER_JEKYLL_SASS/components
        touch $FOLDER_JEKYLL_SASS/components/_index.scss

        mkdir $FOLDER_JEKYLL_SASS/core
        . $FOLDER_BIN/jekyll/css/rhythm.sh > $FOLDER_JEKYLL_SASS/core/_rhythm.scss
        . $FOLDER_BIN/jekyll/css/type.sh > $FOLDER_JEKYLL_SASS/core/_type.scss
        . $FOLDER_BIN/jekyll/css/color.sh > $FOLDER_JEKYLL_SASS/core/_color.scss
        . $FOLDER_BIN/jekyll/css/core.sh > $FOLDER_JEKYLL_SASS/core/_index.scss
        touch $FOLDER_JEKYLL_SASS/core/_grid.scss
    fi

    if [ ! -d $FOLDER_JEKYLL_ASSETS_FONTS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_ASSETS_FONTS\`" $reset
        mkdir $FOLDER_JEKYLL_ASSETS_FONTS
        mkdir $FOLDER_JEKYLL_ASSETS_FONTS/sans
        mkdir $FOLDER_JEKYLL_ASSETS_FONTS/serif
        mkdir $FOLDER_JEKYLL_ASSETS_FONTS/mono
        mkdir $FOLDER_JEKYLL_ASSETS_FONTS/icons
    fi

    if [ ! -d $FOLDER_JEKYLL_ASSETS_JS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_ASSETS_JS\`" $reset
        mkdir $FOLDER_JEKYLL_ASSETS_JS
        touch $FOLDER_JEKYLL_ASSETS_JS/app.min.js
        # touch $FOLDER_JEKYLL_ASSETS_JS/holder.js
        # touch $FOLDER_JEKYLL_ASSETS_JS/html5shiv.js
    fi

    if [ ! -d $FOLDER_JEKYLL_ASSETS_IMG ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_ASSETS_IMG\`" $reset
        mkdir $FOLDER_JEKYLL_ASSETS_IMG
        mkdir $FOLDER_JEKYLL_ASSETS_IMG/ico
        mkdir $FOLDER_JEKYLL_ASSETS_IMG/logos
    fi

    if [ ! -d $FOLDER_JEKYLL_DATA ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_DATA\`" $reset
        mkdir $FOLDER_JEKYLL_DATA
        . $FOLDER_BIN/jekyll/data/addresses.sh > $FOLDER_JEKYLL_DATA/addresses.yml
        . $FOLDER_BIN/jekyll/data/cities.sh > $FOLDER_JEKYLL_DATA/cities.yml
        . $FOLDER_BIN/jekyll/data/faq.sh > $FOLDER_JEKYLL_DATA/faq.yml
        . $FOLDER_BIN/jekyll/data/language.sh > $FOLDER_JEKYLL_DATA/language.yml
        . $FOLDER_BIN/jekyll/data/states.sh > $FOLDER_JEKYLL_DATA/states.yml
    fi

    if [ ! -d $FOLDER_JEKYLL_LAYOUTS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_LAYOUTS\`" $reset
        mkdir $FOLDER_JEKYLL_LAYOUTS
        . $FOLDER_BIN/jekyll/layouts/compress.sh > $FOLDER_JEKYLL_LAYOUTS/compress.html
        . $FOLDER_BIN/jekyll/layouts/default.sh > $FOLDER_JEKYLL_LAYOUTS/default.html
    fi

    if [ ! -d $FOLDER_JEKYLL_INCLUDES ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_INCLUDES\`" $reset
        mkdir $FOLDER_JEKYLL_INCLUDES
        . $FOLDER_BIN/jekyll/includes/header.sh > $FOLDER_JEKYLL_INCLUDES/site-header.html
        . $FOLDER_BIN/jekyll/includes/footer.sh > $FOLDER_JEKYLL_INCLUDES/site-footer.html
        . $FOLDER_BIN/jekyll/includes/meta.sh > $FOLDER_JEKYLL_INCLUDES/site-meta.html
        . $FOLDER_BIN/jekyll/includes/scripts.sh > $FOLDER_JEKYLL_INCLUDES/site-scripts.html
        . $FOLDER_BIN/jekyll/includes/symbols.sh > $FOLDER_JEKYLL_INCLUDES/site-symbols.html
    fi

    if [ ! -d $FOLDER_JEKYLL_PLUGINS ]; then
        echo $black "... $ mkdir \`$FOLDER_JEKYLL_PLUGINS\`" $reset
        mkdir $FOLDER_JEKYLL_PLUGINS
    fi

    echo $green_ "... $ unpack-boilerplate.sh\n" $reset

    printf "%s Do you wish to install the bundle? %s" $white_ $reset
    read answer
    echo ""

    if [ "$answer" != "${answer#[Yy]}" ] ;then
        if ! gem spec bundler > /dev/null 2>&1; then
            echo $red_ "... $ No bundler found" $reset
        else
            echo $black "... $ cd $FOLDER_JEKYLL" $reset
            cd $FOLDER_JEKYLL
            sleep 0.1

            echo $black "... $ bundll install; break;" $reset
            bundle install &>/dev/null; break;
        fi
    fi

    echo $green_ "... $ unpack-boilerplate.sh\n" $reset
fi