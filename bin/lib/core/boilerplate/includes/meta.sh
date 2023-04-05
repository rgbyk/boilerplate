cat <<- _EOF_
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="robots" content="{% if page.index == "noindex" %}noindex,nofollow,noodp{% else %}index,follow,noodp{% endif %}"/>
    <meta name="url" content="{{ page.url | prepend: site.baseurl | prepend: site.url }}" />
    <meta name="language" content="en-US" />

    <link href="{{ site.baseurl | prepend: site.url }}/" rel="home">
    <link href="{{ page.url | prepend: site.baseurl | prepend: site.url }}" rel="canonical">
    
    {% comment %}
    <link rel="preconnect" href="https://stats.g.doubleclick.net">
    <link rel="preconnect" href="https://www.google-analytics.com">
    {% endcomment %}

    {% comment %}
    {% for fonts in site.static_files -%}
    {%- if fonts.path contains '{{ FOLDER_FONTS }}' -%}
    <link rel="preload" href="{{ fonts.path | prepend: site.baseurl | prepend: site.url }}" as="font" type="font/{{ fonts.path | split: "." | last }}" crossorigin>
    {% endif -%}
    {%- endfor %}

    <link rel="preload" href="{{ FOLDER_FONTS }}/..." as="font" type="font/woff2" crossorigin />
    {% endcomment %}

    <link rel="preload" href="{{ FOLDER_CSS }}/main.css?{{ time }}" as="style">
    <link href="{{ FOLDER_CSS }}/main.css?{{ time }}" rel="stylesheet" type="text/css" media="all" />

    {% if page.title %}
    <title>{{ page.title }}</title>
    {% endif %}

    {% if page.description %}
    <meta name="description" content="{{ page.description }}">
    {% endif %}

    {% if page.keywords %}
    <meta name="keywords" content="{{ page.keywords }}">
    {% endif %}

    {% comment %}
    <meta property="og:title" content="{{ page.title }}" />
    <meta property="og:description" content="{{ page.description }}" />
    <meta property="og:image" content="{{ '/assets/img/ico/favicon-512x512.png?' | prepend: site.baseurl | prepend: site.url | append: time }}" />
    <meta property="og:url" content="{{ page.url | prepend: site.baseurl | prepend: site.url }}" />
    <meta property="og:type" content="website" />
    <meta property="og:locale" content="en_US" />

    <meta name="twitter:title" content="{{ page.title }}" />
    <meta name="twitter:description" content="{{ page.description }}" />
    <meta name="twitter:image" content="{{ '/assets/img/ico/favicon-512x512.png?' | prepend: site.baseurl | prepend: site.url | append: time }}" />
    <meta name="twitter:url" content="{{ page.url | prepend: site.baseurl | prepend: site.url }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="" />
    {% endcomment %}
    
    {% comment %}
    {% for favicons in site.static_files -%}
    {%- if favicons.path contains 'assets/img/ico' -%}
        {% assign size = favicons.path | replace: "/assets/img/ico/", "" | replace: "favicon-", "" | replace: ".png", "" %}
        {% assign path = favicons.path | prepend: site.baseurl | prepend: site.url %}

        {%- if size contains '208x208' -%}
            <link rel="apple-touch-icon" href="{{ path }}" />
        {%- endif -%}

        {%- if path contains '.png' -%}
        <link rel="icon" type="image/png" sizes="{{ size }}" href="{{ path }}" />
        {%- endif -%}

        {%- if path contains '.ico' -%}
        <link rel="icon" type="image/x-icon" href="{{ path }}" />
        {%- endif -%}
    {%- endif -%}
    {%- endfor %}
    {% endcomment %}
    
    {% comment %}
    <link rel="manifest" href="{{ site.baseurl | prepend: site.url }}/manifest.json">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="application-name" content="{{ page.title }}">
    <meta name="apple-mobile-web-app-title" content="{{ page.title }}">
    <meta name="theme-color" content="#000000">
    <meta name="msapplication-navbutton-color" content="#000000">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="msapplication-starturl" content="{{ site.baseurl | prepend: site.url }}/">
    <meta name="msapplication-tap-highlight" content="no">
    {% endcomment %}
</head>
_EOF_