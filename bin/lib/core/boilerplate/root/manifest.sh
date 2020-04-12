cat <<- _EOF_
---
# Leave it empty to compile
---

{
  "name": "",
  "short_name": "",
  "description": "",
  "theme_color": "#000000",
  "background_color": "#000000",
  "display": "standalone",
  "prefer_related_applications": true,
  "Scope": "{{ site.baseurl | prepend: site.url }}",
  "start_url": "{{ site.baseurl | prepend: site.url }}",
  "splash_pages": null,
  "icons": [
    // {
    //   "src": "{{ '/assets/img/ico/favicon-16x16.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "16x16",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-32x32.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "32x32",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-48x48.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "48x48",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-62x62.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "62x62",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-96x96.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "96x96",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-128x128.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "128x128",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-144x144.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "144x144",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-152x152.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "152x152",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-192x192.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "192x192",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-208x208.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "208x208",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-384x384.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "384x384",
    //   "type": "image/png"
    // },
    // {
    //   "src": "{{ '/assets/img/ico/favicon-512x512.png' | prepend: site.baseurl | prepend: site.url | append: time }}",
    //   "sizes": "512x512",
    //   "type": "image/png"
    // }
  ]
}
_EOF_