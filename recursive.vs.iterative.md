# Version Itérative versus Récursive

### ci dessous vous allez trouver 5 méthodes, parfois en version récurvive, parfois itérative.
### A vous d'écrire la version manquante

```ruby
# A tout seigneur, tout honneur, le classique factorielle, ici en mode iteratif
# A vous d'écrire la version récursive
def factorial(number)
    raise ArgumentError, "number must be positive" if number < 0

    (1..number).inject(1, &:*)
end

# Un autre classique, fibonacci, ici en mode récursif, à vous de l'écrire en mode itératif
def fibonacci(number)
    raise ArgumentError, "number must be positive" if number < 0

    if number == 0 || number == 1
        number
    else
        fibonacci(number  - 1) + fibonacci(number - 2)
    end
end
 
# une fonction itérative pour trouver le minimum d'un Array de nombres
# A vous d'écrire la version récursive
def find_min(element)
    min = Float::INFINITY
    element.each do |number|
        min = number if number < min
    end
    min
end


# A vous d'écrire la version récursive de is_palindrome?
def is_palindrome?(word)
    while word.length > 1
        return false if word[0] != word[-1]
        word = word[1...-1]
    end
    true
end


# A vous d'écrire la version itérative de flatten, qui transforme un Array pouvant contenir des sous-Array,
#  eux-mêmes pouvant contenir des Array, etc en un Array sans Array à l'intérieur
def flatten(deep_array)
    deep_array.each_with_object([]) do |element, result|
        if element.is_a? Array
            result.concat flatten(element)
        else
            result << element
        end
    end
end

```