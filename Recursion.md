
# (petits) Problèmes liés à la récursivité 

Cette tâche consiste en une série de petits problèmes pour vous familiariser avec l’idée de la récursivité. Ce ne sont pas des questions d’entretiens d'embauche à part entière, mais un excellent point de départ pour vous mettre dans la tête des problèmes de récurrence. 

### Problème 1 

**Écris une fonction récursive qui prend un entier et calcule la somme cumulée de 0 à cet entier** 

**Par exemple, si n = 4, retourne 4 + 3 + 2 + 1 + 0, qui vaut 10.** 

Ce problème est très similaire au calcul récursif de la factorielle, exemple toujours présent dans tous les tutos d'introduction à la récursivité. N'oubliez pas de toujours penser à ce à quoi ressemblera le "scénario de base", c'est-à-dire dans quel cas je sors de la récursion, la "clause de garde". Dans ce cas, nous avons un cas de base de n = 0 (notez que vous auriez également pu concevoir que le seuil soit égal à 1). Dans ce cas, nous avons: n + (n-1) + (n-2) + .... + 0 Remplissez un exemple de solution:


```ruby
def rec_sum(n)
end
```




    :rec_sum



### Problème 2 

Un tout petit plus compliqué (après avoir réfléchi, si vous êtes perdus, regarder le conseil ci-dessous)

**Étant donné un entier, créez une fonction qui renvoie la somme de tous les chiffres individuels de cet entier. Par exemple: si n = 4321, renvoyer 4 + 3 + 2 + 1 soit la valeur 10**


```ruby
def sum_digits(n)
end
```




    :sum_digits



*Conseil*


```ruby
# Vous aurez sûrement besoin des fonctions modulo et division
4321 % 10
```




    1




```ruby
4321 / 10
```




    432



*donc 4321 ? 10 + sum_digits(4321 ? 10) devrait vous aider à penser votre récursion (en remplaçanat le '?' par la bonne opération mathématique*

### Problème 3 

*Notez que c'est un problème plus avancé que les deux précédents! Il a également beaucoup de possibilités de variation et nous ignorons ici les exigences strictes. Nous abordons ici le backtracking* 

Créez une fonction appelée word_split() qui prend en entrée deux arguments, une chaîne **phrase** et un ensemble/array **list_of_words** et renvoie un Array (nommons le ici 'result') contenant des chaînes tel que result.join('') == phrase ou un Array vide si ce n'est pas possible

La fonction déterminera s'il est possible de scinder la chaîne de manière à créer des mots à partir de la liste de mots. Vous pouvez supposer que la phrase ne contiendra que les mots du dictionnaire si elle est entièrement divisible. Par exemple:


```ruby
word_split('themanran',['the','ran','man'])
```




    ["the", "ran", "man"]




```ruby
word_split('ilovedogsJohn',['i','am','a','dogs','lover','love','John'])
```




    ["i", "love", "dogs", "John"]




```ruby
word_split('themanran',['clown','ran','man'])
```




    []




```ruby
def word_split(phrase, list_of_words)
  #
end
```




    :word_split




```ruby

```
