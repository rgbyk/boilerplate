cat <<- _EOF_
source 'https://rubygems.org'

group :jekyll_plugins do
    gem 'jekyll', '~> 4.0.0'
    gem 'jekyll-inline-svg'
end
_EOF_