cat <<- _EOF_
---

layout: default

title: 
description:
image:

metatitle:
metadescription:

index: index

---

{% comment %}
<p>Language File Loop:</p>
{% assign language = site.data.language %}

{{ language.h1 }}<br />
{{ language.button[1] }}<br />
{{ language.button[2] }}<br />

<ul>
   {% for sentence in language.sentence %}
   <li>{{ sentence }}</li>
   {% endfor %}            
</ul>

<ul>
  {% for paragraph in language.paragraph %}
  <li>{{ paragraph }}</li>
  {% endfor %}            
</ul>

<p>Loop FAQ</p>
{% for faq in site.data.faq %}
    {{ faq.title }}
    {% for question in faq.questions %}
      <h3>{{ question.question }}</h3>
      <p>{{ question.answer }}</p>
    {% endfor %}
{% endfor %}

<p>Loop Addresses:</p>
<ul>
    {% for address in site.data.addresses %}
    <li>{{ address.street }}, {{ address.city }}, {{ address.state }}, {{ address.zip }}</li>
    {% endfor %}
</ul>

<p>Loop States:</p>
<ul>
    {% for city in site.data.cities %}
    <li>{{ city.name }}</li>
    {% endfor %}
</ul>
{% endcomment %}
_EOF_