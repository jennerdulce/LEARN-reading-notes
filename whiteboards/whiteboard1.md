#

## Problem Domian
- function that takes in a string and check to see if a string is a palindrome

- input => 'racecar'
- output => true (boolean)

- input => 'rasd'
- output => false

- Edgecase
- if the argument is not a string

- Pseudocode
- Ruby
    - Create a function name is_palindrome
    - Has a parameter; data
    - check to see if 'data' has a class string
        - error
    - if string
        - downcase the string (not saving it)
        - reverse the string
        - compare the original string to the downcased and reversed strig
        - if they are equal
            - return true
        - else
            - return false

```ruby
def is_palindrome data
    if data == data.downcase.reverse
        true
    else
        false
    end
end
p is_palindrome 'race'
```
