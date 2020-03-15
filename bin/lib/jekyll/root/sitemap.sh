cat <<- _EOF_
---
# Leave it empty to compile
---

<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
  <url>
    {% assign sorted_pages = site.html_pages -%}
    {%- for page in sorted_pages -%}
    {%- if page.title -%}
    <url>
      <loc>{{ page.url | prepend: site.baseurl | prepend: site.url }}</loc>
      <lastmod>{{ site.time | date_to_xmlschema }}</lastmod>
      <priority>1.00</priority>
    </url>
    {%- unless forloop.last -%}
    {%- endunless -%}
    {% endif -%}
    {%- endfor %}
</urlset>
_EOF_