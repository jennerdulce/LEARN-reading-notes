# Ruby
# Dynamic - No need for specific declarations like Java.
# Interpreted - Interpreter takes code line by line like JavaScript
# Open Source - Available for free and can be modified and distributed by anyone
# Scripting - General purpose scripting language, language for performing logic no interface
# Object Oriented (OOP) Language - Everything in this programming languages is an object. Moreso, everything is an instance of a class
# irb - interactive Ruby
# Brings us into ruby world
# exit - takes us out of ruby world
# 'nil' is the same as 'null'

# Compiled - Compiled first, then interpreter runs through program (Java)

# Strings
first_name = 'Jenner'
last_name = 'Dulce'
puncuation = "Use double quotes; i.e. It's"

# String Interpolation
# Use double quotes
num1 = 4
"The number is #{num1}"

# Boolean Operators
# Relational Operators && , ||
# Logical Operators > < <= >=
# Equality is only used with '==' always strict equality
8 == 8
4 > 1
5 < 10
5 <= 5
6 >= 6
1 > 0 && 5 < 10
10 > 9 || 5 > 1
7 == '7' # Will be FALSE

# Logical Opposite
8 != 8

# Arrays
colors = ["red", "green", "blue"]

# Built-in Array Methods
# No invocation of methods ()
colors.length
colors.first
colors.last
colors.reverse
colors[0].capitalize # Ruby can capitalize
colors[0].capitalize! # Ruby can capitalize
colors[0].reverse # Ruby can reverse a string
colors[2] * 3 # Can repeat strings
colors[0]
colors[1] = 'black'
colors.first
colors.last
colors.reverse
colors.reverse.first

# Example for red
colors[0].delete('d') # 're'
'hello'.delete('l') # 'heo'

# Include on a string
colors[0].include?('r') # true
# Include on a an array
colors.include?('red') # true

# Bang Method
# Methods are accessors unless you use a BANG to permanantly change and MUTATE them
colors.reverse! # The bang operator permanantly changes

# .class method
# Can use on any object in Ruby and will display the class
1.class # Number
true.class # TrueClass
'string'.class # String
4.0.class # Float

# Changing data types
0.to_s # '0' changes to a string
'90'.to_i # 90 changes to a number

# Append 
colors << 'pink' # Appends / pus
p num1
puts "Hello"

# Create a variable
num = 1
name =' Jenner Dulce'

# Everything in Ruby is an object
# When you make a string, you are instantiating a string and creating an object. So, an ordinary string is an object

# p vs puts
# p allows you to differentiate data types and raw data and preferred way to debug
# puts stringifies output displays information that is not specific
p ['dog', 'cat'] # Displays way better than puts
puts ['dog', 'cat']