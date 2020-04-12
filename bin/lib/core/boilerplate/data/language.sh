cat <<- _EOF_
####################################
# Sample Language
####################################

#
# Example:
# {% assign language = site.data.language %}
# {{ language.h1 }}<br />
# {{ language.button[1] }}<br />
# {{ language.button[2] }}<br />
# <ul>
#    {% for sentence in language.sentence %}
#        <li>{{ sentence }}</li>
#    {% endfor %}            
# </ul>
# <ul>
#   {% for paragraph in language.paragraph %}
#       <li>{{ paragraph }}</li>
#   {% endfor %}            
# </ul>
#

h1: 'Difficult Waffles'

sentence: 
    - 'Roger, hungry: ate 236 peaches & cantaloupes in 1904!'
    - 'Realigned equestrian fez bewilders picky monarch'
    - 'Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich'
    - 'Voix ambiguë d’un cœur qui au zéphyr préfère les jattes de kiwi'
    - 'The July sun caused a fragment of black pine wax to ooze on the velvet quilt'
    - 'While Suez sailors wax parquet decks, Afghan jews vomit jauntily abaft'
    - 'How razorback-jumping frogs can level six piqued gymnasts'

paragraph:
    - 'A peep at some distant orb has power to raise and purify our thoughts like a strain of sacred music, or a noble picture, or a passage from the grander poets. It always does one good.'
    - 'Apparently we had reached a great height in the atmosphere, for the sky was a dead black, and the stars had ceased to twinkle. By the same illusion which lifts the horizon of the sea to the level of the spectator on a hillside, the sable cloud beneath was dished out, and the car seemed to float in the middle of an immense dark sphere, whose upper half was strewn with silver. Looking down into the dark gulf below, I could see a ruddy light streaming through a rift in the clouds.'

caption: 'The spectacle before us was indeed sublime.'

button: 
    - 'Read more'
    - 'Subscribe'
    - 'Add to cart'

word:
    - 'Hoefler'
    - 'Difficult Waffles'
    - 'Handglow'
    - 'Anatomy'
    - 'Kerning Jottly'
    - 'Aghfy'

numeral:
    - '1213141516171819101212324252627282920221232425212324'
    - '2123242526272829202313234353637383930374849404748494'
    - '3132343536373839303414243454647484940458595055859505'
    - '4142434546474849404515253545657585950557678797075321'
    - '5152535456575859505616263646567686960606717273747576'
    - '6162636465676869606717273747576787970786878980862362'
    - '7172737475767879707818283848586878980895969798909658'
    - '8182838485868789808919293949596979890950607080908854'
    - '9192939495969798909010203040506070809052627282920212'  
    - '1213141516171819101212324252627282920236373839303127'
    - '2123242526272829202313234353637383930364748494040009'
    - '3132343536373839303414243454647484940445657585950512'
    - '4142434546474849404515253545657585950505616263646567'
    - '5152535456575859505616263646567686960647576787970712'
    - '6162636465676869606717273747576787970785868789808963'
    - '7172737475767879707818283848586878980896979890989458'
    - '8182838485868789808919293949596979890906070809006709'
    - '9192939495969798909010203040506070809056489709235326'
    - '1213141516171819101212324252627282920236373839303127'
    - '2123242526272829202313234353637383930364748494040009'
    - '3132343536373839303414243454647484940445657585950512'
    - '4142434546474849404515253545657585950505616263646567'
    - '5152535456575859505616263646567686960647576787970712'
    - '6162636465676869606717273747576787970785868789808963'
    - '7172737475767879707818283848586878980896979890989458'
    - '8182838485868789808919293949596979890906070809006709'
    - '9192939495969798909010203040506070809056489709235326'
    - '7172737475767879707818283848586878980896979890989458'
    - '8182838485868789808919293949596979890906070809006709'
    - '9192939495969798909010203040506070809056489709235326'

alphabet: 
    - 'AaAbAcAdAeAfAgAhAiAjAkAlAmAnAoApAqArAsAtAuAvAwAxAyAz'
    - 'BaBbBcBdBeBfBgBhBiBjBkBlBmBnBoBpBqBrBsBtBuBvBwBxByBz'
    - 'CaCbCcCdCeCfCgChCiCjCkClCmCnCoCpCqCrCsCtCuCvCwCxCyCz'
    - 'DaDbDcDdDeDfDgDhDiDjDkDlDmDnDoDpDqDrDsDtDuDvDwDxDyDz'
    - 'EaEbEcEdEeEfEgEhEiEjEkElEmEnEoEpEqErEsEtEuEvEwExEyEz'
    - 'FaFbFcFdFeFfFgFhFiFjFkFlFmFnFoFpFqFrFsFtFuFvFwFxFyFz'
    - 'GaGbGcGdGeGfGgGhGiGjGkGlGmGnGoGpGqGrGsGtGuGvGwGxGyGz'
    - 'HaHbHcHdHeHfHgHhHiHjHkHlHmHnHoHpHqHrHsHtHuHvHwHxHyHz'
    - 'IaIbIcIdIeIfIgIhIiIjIkIlImInIoIpIqIrIsItIuIvIwIxIyIz'
    - 'JaJbJcJdJeJfJgJhJiJjJkJlJmJnJoJpJqJrJsJtJuJvJwJxJyJz'  
    - 'KaKbKcKdKeKfKgKhKiKjKkKlKmKnKoKpKqKrKsKtKuKvKwKxKyKz'  
    - 'LaLbLcLdLeLfLgLhLiLjLkLlLmLnLoLpLqLrLsLtLuLvLwLxLyLz'  
    - 'MaMbMcMdMeMfMgMhMiMjMkMlMmMnMoMpMqMrMsMtMuMvMwMxMyMz'  
    - 'NaNbNcNdNeNfNgNhNiNjNkNlNmNnNoNpNqNrNsNtNuNvNwNxNyNz'  
    - 'OaObOcOdOeOfOgOhOiOjOkOlOmOnOoOpOqOrOsOtOuOvOwOxOyOz'  
    - 'PaPbPcPdPePfPgPhPiPjPkPlPmPnPoPpPqPrPsPtPuPvPwPxPyPz'  
    - 'QaQbQcQdQeQfQgQhQiQjQkQlQmQnQoQpQqQrQsQtQuQvQwQxQyQz'  
    - 'RaRbRcRdReRfRgRhRiRjRkRlRmRnRoRpRqRrRsRtRuRvRwRxRyRz'  
    - 'SaSbScSdSeSfSgShSiSjSkSlSmSnSoSpSqSrSsStSuSvSwSxSySz'  
    - 'TaTbTcTdTeTfTgThTiTjTkTlTmTnToTpTqTrTsTtTuTvTwTxTyTz'  
    - 'UaUbUcUdUeUfUgUhUiUjUkUlUmUnUoUpUqUrUsUtUuUvUwUxUyUz'  
    - 'VaVbVcVdVeVfVgVhViVjVkVlVmVnVoVpVqVrVsVtVuVvVwVxVyVz'  
    - 'WaWbWcWdWeWfWgWhWiWjWkWlWmWnWoWpWqWrWsWtWuWvWwWxWyWz'  
    - 'XaXbXcXdXeXfXgXhXiXjXkXlXmXnXoXpXqXrXsXtXuXvXwXxXyXz'  
    - 'YaYbYcYdYeYfYgYhYiYjYkYlYmYnYoYpYqYrYsYtYuYvYwYxYyYz'  
    - 'ZaZbZcZdZeZfZgZhZiZjZkZlZmZnZoZpZqZrZsZtZuZvZwZxZyZz' 
    - 'KaKbKcKdKeKfKgKhKiKjKkKlKmKnKoKpKqKrKsKtKuKvKwKxKyKz'  
    - 'LaLbLcLdLeLfLgLhLiLjLkLlLmLnLoLpLqLrLsLtLuLvLwLxLyLz'  
    - 'MaMbMcMdMeMfMgMhMiMjMkMlMmMnMoMpMqMrMsMtMuMvMwMxMyMz'
_EOF_