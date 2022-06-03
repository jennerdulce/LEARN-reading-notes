# Ruby Hashes
# Duck Typing - This term comes from the saying ""If it looks like a duck and quacks like a duck just go ahead and treat it like a duck." Duck typing pertains to classes and their methods. Ruby knows what classes have access to what methods. If a class is this, treat it as such.
# Hash - collection of unique keys and their values / a container for data
# Similar to an object
# Class hash falls under the category of enumerable. THIS MEANS YOU CAN USE ITERABLE METHODS on a hash
# => this is a hash rocket; used to define a value within a hash
# :key this syntax signifies a symbol also known as a key
# HASHES HAVE THE ABILITY TO ITERATE
# YOU CAN USE MAP ETC

# Create
recipe = Hash.new

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

# Renaming a key but keeping the value
recipe[:buter] = "1 cup"
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups", :buter=>"1 cup"}

recipe[:butter] = recipe.delete :buter
p recipe
# OUTPUT: {:flour=>"2 cups", :eggs=>"3", :sugar=>"5 cups", :butter=>"1 cup"}

# Deleting a key value pair completely
# recipe.delete :buter
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

list_of_keys_stringified = recipe.map do |key, value|
    key.to_s
end
p list_of_keys_stringified

# Summary
# Hashes are collections of key:value pairs.
# The class Hash can be created by assigning a variable or by using the .new method.
# Hashes can have new key value pairs added, updated or deleted.
# Hashes have enumerable abilities allowing developer the ability to use methods such as .each and .map to iterate over the key:value pairs.