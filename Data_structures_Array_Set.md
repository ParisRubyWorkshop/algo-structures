
# Les structures de données, Array et Set

Voici quelques petits problèmes, des classiques d'entretien d'embauche, tirés du cours Udemy (en anglais et en Python) https://www.udemy.com/python-for-data-structures-algorithms-and-interviews. Nous essaierons de faire attention à la complexité temporelle/spatiale, le fameux O(n)

Lisez l'énoncé et regarder les exemples. Si vous le sentez, écrivez vos tests d'abord ! Si vous êtes perdu, demander à votre voisin(e) de gauche, si il/elle ne sait pas, demander à votre voisin(e) de droite, si il/elle ne sait pas, demander à Google ou liser les indications de solution proposée.

# les Tableaux

## Les anagrammes

### Problème

Vérifier si deux chaînes de caractères données sont des anagrammes. Un anagramme est présent si les deux chaînes contiennent exactement les mêmes lettres, chacune le même nombre de fois (donc en extrayant toutes les lettres de la première chaîne, vous pouvez écrire la seconde sans qu'une lettre de la première ne manque ou soit en trop).

Par exemple:

"public relations" est un anagramme de "crap built on lies."

"clint eastwood" est un anagramme de "old west action"

Note: on ne tient pas compte ni des espaces, ni des majuscules. Ainsi "d go" est un anagramme de "God", pareil pour "dog" et "o d g".

### Solution

compléter la méthode ci-dessous:


```ruby
def anagram(string1, string2)
 # à vous
end
```

```ruby
anagram('dog','god')
```




    true



## Somme de paires d'entiers

### Problème

Soit un tableau d'entiers, renvoyer toutes les paires ** *uniques* ** telles que la somme de leurs deux élèments soit égale à la valuer spécifique donnée **k**

Ainsi avec:
    
    pair_sum([1,3,2,2],4)

retournera **2** paires:

     (1,3)
     (2,2)

**NOTE: POUR POUVOIR TESTER PLUS FACILEMENT VOTRE FONCTION, MODIFIER LA POUR QU'ELLE RENVOIE LE NOMBRE DE PAIRES**

*sauf que j'ai pas encore écrit les tests !*


```ruby
require 'set'

def pair_sum(int_array, k)

  # It's up to you !  
end
```




    :pair_sum


## (une) Solution possible

un conseil: vous pouvez utiliser la structure Set (avec un `require 'set'`), qui est une sorte de mélange entre un Array et un Hash, et qui, notamment, ne permet pas le stockage de doublons.

à vous de jouer:
L'algorithme O (N) utilise la structure de données Set. Nous effectuons une passe linéaire depuis le début et nous vérifions pour chaque élément si k-élément est dans l'ensemble des nombres vus. Si c'est le cas, nous avons trouvé une paire de somme k et l'ajoutons à la sortie. Sinon, cet élément n'appartient pas encore à une paire et nous l'ajoutons à l'ensemble des éléments vus.

L'algorithme est vraiment simple une fois que nous avons compris pourquoi utilisant un Set. La complexité est O(N), car nous effectuons un balayage linéaire unique du tableau. Pour chaque élément, nous vérifions simplement si le nombre correspondant pour former une paire est présent dans l'ensemble ou si nous ajoutons l'élément actuel à l'ensemble. Les opérations d'insertion et de recherche d'un ensemble sont toutes les deux moyennes O(1), de sorte que l'algorithme est au total O(N).



## Trouver l'élément manquant 

### Problème

Considérez un tableau d'entiers non négatifs. Un second tableau est formé en mélangeant les éléments du premier tableau et en supprimant au hasard un élément. Étant donné ces deux tableaux, recherchez l’élément manquant dans le deuxième tableau. 

Voici un exemple d’entrée, le premier tableau est mélangé et le nombre 5 est supprimé pour construire le deuxième tableau.

Entrée: finder([1,2,3,4,5,6,7], [3,7,2,1,4,6]) 

Sortie: 5 est le nombre manquant 

### Solution 

Remplissez votre solution ci-dessous:


```ruby
def finder(full_array, missing_array)
  
end
```

## (une) Solution possible

La solution naïve consiste à parcourir chaque élément du second tableau et à vérifier s’il apparaît dans le premier tableau. Notez qu'il peut y avoir des éléments en double dans les tableaux, nous devons donc y porter une attention particulière. La complexité de cette approche est O(N ^ 2), car nous aurions besoin de deux boucles imbriquées.

Une solution plus efficace consiste à trier le premier tableau. Ainsi, tout en vérifiant si un élément du premier tableau apparaît dans le second, nous pouvons effectuer une recherche binaire. Mais nous devons toujours faire attention aux éléments en double. La complexité est O(NlogN). 

Si nous ne voulons pas traiter le cas particulier des numéros en double, nous pouvons trier les deux tableaux et les parcourir simultanément. Une fois que deux "itérateurs" ont des valeurs différentes, nous pouvons nous arrêter. La valeur du premier "itérateur" est l'élément manquant. Cette solution est aussi O (NlogN). Voici la solution pour cette approche:


```ruby
require 'set'

# ne fonctionne que s'il n'y a pas de doublons !
def finder(full_array, missing_array)
  #
end

def finder2(full_array, missing_array)
  #
end
```




    :finder2



Dans la plupart des entretiens d'embauche, on s'attendrait à ce que vous trouviez une solution de compléxité temporelle linéaire, en O(n). Nous pouvons utiliser une table de hachage et stocker le nombre de fois où chaque élément apparaît dans le second tableau. Ensuite, pour chaque élément du premier tableau, nous décrémentons son compteur. Une fois qu'on trouve un élément avec un compteur à -1, hé bien on a trouvé l'élément manquant. Voici cette solution:


```ruby
def finder3(full_array, missing_array)
  
end
```

Une solution possible consiste à calculer la somme de tous les nombres dans full_array et missing_array et à soustraire la somme de missing_array à la somme de full_array. La différence est le nombre manquant dans missing_array. 

Cependant, cette approche pourrait poser problème si les tableaux sont trop longs ou si les nombres sont très importants. Ensuite, il pourrait y avoir débordement en additionnant les nombres.

Mais il y a un truc, grâce à une astuce très "astucieuse", nous pouvons réaliser notre opération en un temps linéaire et en une complexité d’espace constante sans aucun problème. La voici: initialisez une variable à 0, puis [XOR] (https://fr.wikipedia.org/wiki/Exclusive_or) tous les éléments des premier et deuxième tableaux contenant cette variable. En fin de compte, la valeur de la variable sera le résultat, élément manquant dans missing_array.


```ruby
def finder3(full_array, missing_array) 

end
```


## Plus grande somme continue 

### Problème

Étant donné un tableau d'entiers (positif et négatif), trouvez la plus grande somme continue.

### Solution

Remplissez votre solution ci-dessous:


```ruby
def large_cont_sum(array_int)
  
  # It's up to you !
  
end
```


```ruby
large_cont_sum([1,2,-1,3,4,10,10,-10,-1])
```




    29



### (une) Solution

Si le tableau est constitué uniquement d'entiers positifs, le résultat est simplement la somme de tous les nombres. Les nombres négatifs dans le tableau nous obligeront à commencer à vérifier les séquences. Le principe de l'algorithme est : nous commençons à additionner les nombres et à stocker dans une variable de somme courante. Après avoir ajouté chaque élément, nous vérifions si la somme actuelle est supérieure à la somme maximale rencontrée jusqu'à présent. Si c'est le cas, nous mettons à jour la somme maximale. Tant que la somme actuelle est positive, nous continuons à additionner les chiffres. Lorsque la somme actuelle devient négative, nous commençons par une nouvelle somme actuelle. Parce qu'une somme actuelle négative ne fera que diminuer la somme d'une séquence future. Notez que nous ne réinitialisons pas la somme actuelle à 0 car le tableau peut contenir tous les entiers négatifs. Alors le résultat serait le plus grand nombre négatif. Voyons le code:


```ruby
def large_cont_sum(array_int) 
  #
end
```




    :large_cont_sum



## Caractères uniques dans la chaîne 

### Problème

Étant donné une chaîne, déterminez si elle est composée de caractères n'apparaissant chacun qu'une seule fois. Par exemple, la chaîne 'abcde' a tous les caractères uniques et doit renvoyer True. La chaîne 'aabcde' contient des caractères en double et doit renvoyer false.

### Solution 

Remplissez votre solution ci-dessous:


```ruby
def uni_char(string)
end
```


```ruby
uni_char "abcde"
```




    true




```ruby
uni_char "abcdefghzz"
```




    false



### (une) Solution 
Nous allons montrer deux solutions possibles, une utilisant une structure de données (Set) et une fonction intégrée et une autre utilisant la même structure de données (Set) mais utilisant une méthode de recherche pour vérifier si les caractères sont uniques.


```ruby
require 'set'

def uni_char(string)
  #
end
```




    :uni_char




```ruby
require 'set'

def uni_char2(string)
  #
end
```

## Compression de chaîne 

### Problème 

Si une chaîne au format "AAAABBBBCCCCCDDEEEE" est compressée, elle devient "A4B4C5D2E4". Pour ce problème, vous pouvez faussement "compresser" des chaînes de lettres simples ou doubles. Par exemple, il est normal que «AAB» renvoie «A2B1» même si, techniquement, cela prend plus de place. La fonction doit également être sensible à la casse, de sorte qu'une chaîne 'AAAaaa' retourne 'A3a3'.

### Solution 

Remplissez votre solution ci-dessous:


```ruby
def compress(string)
end
```

### (une) Solution

La solution ci-dessous devrait nous donner une complexité temporelle et spatiale égale à O(n). Regardons attentivement les commentaires explicatifs:


```ruby
def compress(string)
  # This solution compresses without checking. Known as the RunLength Compression algorithm.
end
```




    :compress




```ruby
compress('AAAAABBBBCCCC')
```




    "A5B4C4"




```ruby
compress('Aa')
```




    "A1a1"




```ruby

```

