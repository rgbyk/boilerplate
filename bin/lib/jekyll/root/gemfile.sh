cat <<- _EOF_
source "https://rubygems.org"

group :jekyll_plugins do
    gem "jekyll"
end

gem "webrick", "~> 1.7"
_EOF_