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
- POSTGRES = DATABASE
- SQL - DOMAIN SPECIFIC LANGUAGE USED TO INTERACT WITH DATABASE
- SCRIPTING LANGUAGE - JAvascript - programming language that ran and read from top to bottom, is interpreted at runtime rather than compiled like java. compiled code has to be compiled before being ran
- MARKUP LANGUAGE - documentation like html that helps format the overall view of a page and the data it contains. ML in HTML means markup language
- RELATIONAL DATABASE - relationships between two tables tying in other objects together

- model : db using active record
- controller: glue between the two
    - logic contains methods that will run the code

- model
- controller - the glue
- view
- build passion project
- TA

- react is a view can potentially be a controller




- YOU CAN use ruby to make a full stack applications, however may not be dynamic like reacts
- There is a method to find the minimum


```javascript

```