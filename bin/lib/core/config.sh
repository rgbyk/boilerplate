#!/bin/sh
#
# ---------------------------------------------------------------------
# Configuration File
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/core/config.sh
# 2. $ ./bin/lib/core/config.sh
#
set -e

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

_name=$(node -p "require('./package.json').name")
_version=$(node -p "require('./package.json').version")

FOLDER_SRC_SCSS=$'./src/scss'
FOLDER_SRC_JS=$'./src/js'
FOLDER_SRC_JS_VENDORS=$'./src/js/vendors'
FOLDER_SRC_JS_PLUGINS=$'./src/js/plugins'
FOLDER_SRC_JS_FUNCTIONS=$'./src/js/functions'

FOLDER_BIN=$'./bin/lib'

NODE_MODULES=$'./node_modules'

FOLDER_DIST=$'./dist'
FOLDER_DIST_ASSETS=$'./dist/assets'
FOLDER_DIST_ASSETS_CSS=$'./dist/assets/css'

FOLDER_DIST_ASSETS_JS=$'./dist/assets/js'
FOLDER_DIST_ASSETS_JS_BUNDLE=$'./dist/assets/js/bundle'

FOLDER_JEKYLL=$'./jekyll'
FOLDER_JEKYLL_SASS=$'./jekyll/_sass'
FOLDER_JEKYLL_LAYOUTS=$'./jekyll/_layouts'
FOLDER_JEKYLL_INCLUDES=$'./jekyll/_includes'
FOLDER_JEKYLL_PLUGINS=$'./jekyll/_plugins'
FOLDER_JEKYLL_DATA=$'./jekyll/_data'

FOLDER_JEKYLL_ASSETS=$'./jekyll/assets'
FOLDER_JEKYLL_ASSETS_CSS=$'./jekyll/assets/css'
FOLDER_JEKYLL_ASSETS_JS=$'./jekyll/assets/js'
FOLDER_JEKYLL_ASSETS_IMG=$'./jekyll/assets/img'
FOLDER_JEKYLL_ASSETS_FONTS=$'./jekyll/assets/css/fonts'

FILE_STYLE=$'style'

## ---------------------------------------------------------------------
## Styling
## ---------------------------------------------------------------------

black=$'\e[90;1m'
black_=$'\e[90;6m'
red=$'\e[91;1m'
red_=$'\e[91;6m'
green=$'\e[92;1m'
green_=$'\e[92;6m'
yellow=$'\e[93;1m'
yellow_=$'\e[93;6m'
blue=$'\e[94;1m'
blue_=$'\e[94;6m'
magenta=$'\e[95;1m'
magenta_=$'\e[95;6m'
cyan=$'\e[96;1m'
cyan_=$'\e[96;6m'
white=$'\e[97;1m'
white_=$'\e[97;6m'
reset=$'\e[0m'

bold=$'\e[1m'
reverse=$'\e[7m'
underline=$'\e[4m'