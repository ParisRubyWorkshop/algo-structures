
# Piles, files et queues

## Implémenter un Pile LIFO

qui aura les méthodes suivantes

* Stack.new crée une nouvelle pile vide. Il n'a pas besoin de paramètres et renvoie une pile vide. 
* push(item) ajoute un nouvel item en haut de la pile. Il a besoin de l'article et ne retourne rien. 
* pop supprime le premier élément de la pile. Il n'a pas besoin de paramètres et renvoie l'élément. La pile est modifiée. 
* peek renvoie le premier élément de la pile mais ne le supprime pas. Il n'a pas besoin de paramètres. La pile n'est pas modifiée. 
* empty? teste si la pile est vide. Il n'a pas besoin de paramètres et retourne une valeur booléenne. 
* size renvoie le nombre d'éléments de la pile. Il n'a pas besoin de paramètres et retourne un entier.

## Implémenter une file d'attente FIFO

Méthodes et attributs de la file d'attente

Avant de commencer à mettre en œuvre notre propre file d'attente, examinons l'attribut et les méthodes dont il disposera: 

* Queue.new crée une nouvelle file d'attente vide. Il n'a pas besoin de paramètres et renvoie une file d'attente vide. 
* queue(élément) ajoute un nouvel élément à l'arrière de la file d'attente. Il a besoin de l'article et ne retourne rien. 
* dequeue supprime l'élément avant de la file d'attente. Il n'a pas besoin de paramètres et renvoie l'élément. La file d'attente est modifiée. 
* empty? teste si la file est vide. Il n'a pas besoin de paramètres et retourne une valeur booléenne. 
* size  renvoie le nombre d'éléments dans la file d'attente. Il n'a pas besoin de paramètres et retourne un entier.

## Implémenter une file d'attente (FIFO) en utiliser deux piles (LIFO)

En fonction de la classe Stack ci-dessous, implémentez une classe de file d'attente à l'aide de **deux** piles! Notez qu'il s'agit d'un problème "classique" d'entretien d'embauche. Utilisez un Array comme pile.

## Vérification de l'équilibrage des parenthèses  

### Enoncé du problème

Avec une chaîne de parenthèses ouvrantes et fermantes, vérifiez si elle est équilibrée. Nous avons 3 types de parenthèses: les parenthèses: (), les crochets: [] et les accolades: {}. On supposera que la chaîne ne contienne aucun autre caractère que ceux-ci, ni d'espaces, ni de chiffres. 

Pour rappel, les parenthèses équilibrées exigent que chaque parenthèse ouvrante soit fermée dans l'ordre inverse. Par exemple, `([])` est équilibré mais `([)]` ne l’est pas. Vous pouvez supposer que la chaîne d'entrée n'a pas d'espaces. 




```ruby
def balance_check(string)
  #
end
```




    :balance_check




```ruby
balance_check('[]')
```




    true




```ruby
balance_check('[](){([[[]]])}')
```




    true




```ruby
balance_check('()(){]}')
```




    false



## indices pour une Solution 

Encore un classique ! C'est un problème très commun d'entretien très commun et c'est l'un des principaux moyens de vérifier vos connaissances sur l'utilisation de piles! 

Notre logique de solution: nous allons d’abord balayer la chaîne de gauche à droite, et chaque fois que nous voyons une parenthèse ouvrante, nous la poussons dans une pile, car nous voulons que la dernière parenthèse ouvrante soit fermée en premier. (N'oubliez pas la structure FILO d'une pile!) Ensuite, lorsque nous voyons une parenthèse fermante, nous vérifions si la dernière ouverte correspond à celle de fermeture, en supprimant un élément de la pile. Si la correspondance est valide, nous continuons notre analyse, et ne renvoyons pas false. Si la pile est vide, nous renvoyons également la valeur false, car il n’y a pas de parenthèse ouvrante associée à celle-ci. En fin de compte, nous vérifions également si la pile est vide. Si c'est le cas, nous renvoyons true, sinon nous renvoyons false car certaines parenthèses ouvertes n'étaient pas fermées.
