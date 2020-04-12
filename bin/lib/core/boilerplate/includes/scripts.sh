cat <<- _EOF_
<script src="{{ FOLDER_JS }}/app.min.js?{{ time }}"></script>

{%- comment -%}
<script src="{{ FOLDER_JS }}/holder.js?{{ time }}"></script>
{%- endcomment -%}
_EOF_