# Ruby Methods

# def stands for defines
# Every def needs a corresponding end. Acts similar as a curly brace

def greeter
    puts 'Hello World'
end
greeter

# Implicit return
# Ruby has an implicit return, which means the value of the last line of a method is automatically returned without using the keyword return
def greetings
    'Hello There Person..'
end
p greetings

# Method with parameters
def greet_with_name(name)
    "Hello nice to meet you #{name}"
end
p greet_with_name 'Karen'

# Method with multiple parameters
def add(num1, num2)
    num1 + num2
end
p add(100, 9)
p add(1000, -999)

# Challenge
password = 'hello'       
if password.include?('!') || password.include?('?')
    p 'password is good'
else
    p 'password is not good'
end

require 'io/console'


# def password_challenge
#     puts 'Enter a username:'
#     username = gets.chomp
#     puts 'Enter a password:'
#     password = STDIN.getpass("Password:")
#     if username.downcase == password.downcase
#         p 'Username cannot be the same as password.'
#     elsif password == 'password'
#         p 'Invalid entry for password.'
#     elsif password.downcase.length <= 5
#         p 'Password is too short.'
#     elsif !password.include?('!') && !password.include?('#') && !password.include?('$')
#         p 'Password is  missing special character !, #, or $'
#     elsif username.include?(' ') || username.include?('!') || username.include?('#') || username.include?('$')
#         p 'Username cannot have any spaces or special characters.'
#     else 
#         p 'Account successfully created'
#     end
# end

# password_challenge
# s = 'booboo'
# if s =~ /\d/         # Calling String's =~ method.
#     puts "The String '#{s}' has a number in it."
#   else
#     puts "The String '#{s}' does not have a number in it."
#   end
# p 'hello5' =~ /\d/
# I like the conversation of the VDOM
# Where he went about knowing what the DOM is and went into a discussion