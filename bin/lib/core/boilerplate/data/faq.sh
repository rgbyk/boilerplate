cat <<- _EOF_
####################################
# Sample FAQ
####################################

#
# Example:
# {% for faq in site.data.faq %}
# {{ faq.title }}
# {% for question in faq.questions %}
#   {{ question.question }}
#   {{ question.answer }}
# {% endfor %}
# {% endfor %}
#

- title: Basics
  questions:
    - question: How do I sign up?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non eos molestias nulla animi tempore dicta quisquam eius dolorem, delectus voluptas pariatur nesciunt facere ab, eum!
    - question: How do I change my password?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere ipsam, molestias commodi neque dolorem nihil debitis inventore ratione, ipsum odio, corrupti ab voluptates nesciunt, soluta.
    - question: What file should my logo be?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur repellat amet, inventore architecto voluptatem voluptatum! Ex hic, eaque dignissimos enim aut dolores reiciendis, repudiandae voluptatem!

- title: Advanced
  questions:
    - question: How does syncing work?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa a eum quod reiciendis molestiae dolor similique ut eius iusto atque voluptate, nobis voluptatem, non assumenda.

    - question: How do I upload files from my phone or tablet?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur nulla similique tenetur repellendus necessitatibus laboriosam, enim. Assumenda eum ipsam consectetur doloribus reprehenderit, sequi ducimus voluptates.

    - question: How do I link a file or folder?
      answer: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ea, nam, libero pariatur odio error sunt consectetur commodi debitis sit a excepturi consequatur. Dolorem, rerum.
_EOF_