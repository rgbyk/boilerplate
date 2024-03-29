cat <<- _EOF_
source: .
destination: _site
plugins_dir: _plugins
layouts_dir: _layouts
data_dir: _data
includes_dir: _includes

sass:
  sass_dir: _sass
  style: compressed

safe: false

keep_files: ["images"]

# include: [".htaccess"]
exclude:
  - .sass-cache/
  - .jekyll-cache/
  - gemfiles/
  - Gemfile
  - Gemfile.lock
  - node_modules/
  - vendor/bundle/
  - vendor/cache/
  - vendor/gems/
  - vendor/ruby/

# Gems

# Plugins
whitelist: []
plugins: []

# Filtering Content
show_drafts: null
limit_posts: 0
future: false
unpublished: false

# Conversion
markdown: kramdown
kramdown:
  input: GFM
  auto_ids: false
  toc_levels: 1..6
  smart_quotes: lsquo,rsquo,ldquo,rdquo
  hard_wrap: false
  show_warnings: false
  syntax_highlighter: rouge
  syntax_highlighter_opts:
    span:
      line_numbers: true
    block:
      line_numbers: true
lsi: false
excerpt_separator: "\n\n"
incremental: false

# Serving
detach: false
port: 8999
host: localhost
url: https://example.com
baseurl: "" # "/folder"
livereload: true

# Outputting
encoding: utf-8
markdown_ext: "markdown,mkdown,mkdn,mkd,md"
permalink: pretty
timezone: null

quiet: false
verbose: false
defaults: []

liquid:
  error_mode: warn # lax, warn, strict
  strict_filters: false
  strict_variables: false
_EOF_