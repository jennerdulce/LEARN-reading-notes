# Ruby Hashes
# Duck Typing - This term comes from the saying ""If it looks like a duck and quacks like a duck just go ahead and treat it like a duck." Duck typing pertains to classes and their methods. Ruby knows what classes have access to what methods. If a class is this, treat it as such.
# Hash - collection of unique keys and their values / a container for data
# Similar to an object
# Class hash falls under the category of enumerable. THIS MEANS YOU CAN USE ITERABLE METHODS on a hash
# => this is a hash rocket; used to define a value within a hash
# :key this syntax signifies a symbol also known as a key
# Modules - grouping of like things that have similar properties
# HASHES HAVE ENUMERABLE ABILITIES = THE ABILITY TO ITERATE
# YOU CAN USE MAP ETC

# Create
recipe = Hash.new

# How we will be creating hashes
jenner = {
    first_name: "Jenner",
    last_name: "Dulce",
    age: 29,
    birth_month: "January",
    birth_day: 14,
    birth_year: 1993,
    hasDog: true,
    favorite_food: "Japanese"
}
p jenner
# OUTPUT: 
# {  
# :first_name=>"Jenner", 
# :last_name=>"Dulce", 
# :age=>29, 
# :birth_month=>"January", 
# :birth_day=>14, 
# :birth_year=>1993, 
# :hasDog=>true, 
# :favorite_food=>"Japanese"
# }

# Read
p recipe
# OUTPUT: {}

# Update
# Add key value pairs by using this syntax that utilizes square braces with a : and key name and assigns a value
recipe[:flour] = "2 cups"
recipe[:eggs] = "3"
recipe[:sugar] = "5 cups"
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups"}

# Update a value
recipe[:sugar] = "1 cup"
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"1 cups"}

#Updates a keyname and keeps the value
recipe[:buter] = "1 cup"
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups", :buter=>"1 cup"}

recipe[:butter] = recipe.delete :buter
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups", :butter=>"1 cup"}

# Deleting a key value pair completely
recipe.delete :butter
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups"}

# Show one value
# Shows value
p recipe[:sugar]
# OUTPUT: 5 cups

# Shows key
p recipe.key("5 cups")
# OUTPUT: sugar

# Iteration
# You can iterate through hashes like arrays
recipe.each do |key, value|
    if key.to_s == "eggs"
        p "Add #{value} #{key} to the bowl"
    else
        p "Add #{value} of #{key} to the bowl"
    end
end
# OUTPUT: 
# "Add 2 cups of flour to the bowl"
# "Add 3 eggs to the bowl"
# "Add 5 cups of sugar to the bowl"
# "Add 1 cup of butter to the bowl"

list_of_keys = recipe.map do |key, value|
    key
end
p list_of_keys
# OUTPUT: [:flour, :eggs, :sugar, :butter]

list_of_keys_stringified = recipe.map do |key, value|
    key.to_s
end
p list_of_keys_stringified
# OUTPUT: ["flour", "eggs", "sugar", "butter"]

list_of_values = jenner.map do |key, value|
    value
end
p list_of_values
# OUTPUT: ["Jenner", "Dulce", 29, "January", 14, 1993, true, "Japanese"]

# Summary
# Hashes are collections of key:value pairs.
# The class Hash can be created by assigning a variable or by using the .new method.
# Hashes can have new key value pairs added, updated or deleted.
# Hashes have enumerable abilities allowing developer the ability to use methods such as .each and .map to iterate over the key:value pairs.

# Challenges: Practice with Hashes
# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:instagram] = "Social Media"
my_phone[:tiktok] = "Social Media"
my_phone[:spotify] = "Music"
my_phone[:gmail] = "Email"
my_phone[:hearthstone] = "Game"

# As a developer, I can return a value from my_phone by passing in the name of a key.
p my_phone[:gmail]

# As a developer, I can update two keys in my_phone.
my_phone[:youtube] = my_phone.delete :spotify
my_phone[:hotmail] = my_phone.delete :gmail
p my_phone

# As a developer, I can update two values in my_phone.
my_phone[:instagram] = "Entertainment"
my_phone[:tiktok] = "Entertainment"
p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete :instagram
my_phone.delete :tiktok
p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.


# Stretch Challenges
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
