#!/bin/sh
#
# ---------------------------------------------------------------------
# Kill Similar Processes
# ---------------------------------------------------------------------
#
# 1. $ chmod +x ./bin/lib/core/kill.sh
# 2. $ ./bin/lib/core/kill.sh
# 3. $ "kill": "chmod +x ./bin/lib/core/kill.sh && ./bin/lib/core/kill.sh"
#

set -e

## ---------------------------------------------------------------------
## Variables
## ---------------------------------------------------------------------

. ./bin/lib/core/config.sh

## START ------------------------------------

echo $white_ "... $ @rgbyk/kill.sh;" $reset

## Find and kill all `nodemon`
ps aux | grep nodemon | awk '{print $2}' | xargs kill -9 &>/dev/null &

## Find and kill all `jekyll`
ps aux | grep jekyll | awk '{print $2}' | xargs kill -9 &>/dev/null &

echo $green_ "... $ @rgbyk/kill.sh;\n" $reset

## END --------------------------------------