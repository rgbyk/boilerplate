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

- title: Account Management
  questions:
    - question: How do I delete my account?
      answer: To delete your account, go to your account settings and click on the option to delete your account. Follow the prompts to complete the process.
    - question: Can I change the email associated with my account?
      answer: Yes, you can change the email associated with your account by going to your account settings and updating your email address.
    - question: How do I update my payment information?
      answer: To update your payment information, go to your account settings and click on the option to update payment information. Follow the prompts to enter your new payment details.

- title: Products/Services
  questions:
    - question: What products/services do you offer?
      answer: We offer a range of products/services including X, Y, and Z. Please visit our website to learn more.
    - question: What is the cost of your products/services?
      answer: The cost of our products/services varies depending on several factors. Please visit our website or contact us directly for more information.
    - question: Do you offer a free trial?
      answer: Yes, we offer a free trial for some of our products/services. Please visit our website or contact us directly for more information.

- title: Technical Support
  questions:
    - question: What should I do if I experience technical difficulties?
      answer: If you experience technical difficulties, please contact our technical support team for assistance. They can be reached by phone, email, or chat.
    - question: How do I update my software?
      answer: To update your software, go to your account settings and click on the option to update software. Follow the prompts to complete the process.
    - question: What are the system requirements for your software?
      answer: The system requirements for our software vary depending on the product. Please visit our website or contact us directly for more information.
_EOF_