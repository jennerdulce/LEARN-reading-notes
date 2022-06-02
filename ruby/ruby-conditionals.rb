# Ruby Conditionals
# The evaluations do not have to be wrapped in ()
# 'end' keyword signifies that this is the end of the conditional

# If / Else
isTrue = true
if isTrue == true
    p 'This is true'
else
    p 'This is not true'
end


# Else if
my_num = 10
if my_num == 10
    p "This number is 10"
elsif my_num > 10
    p "This number is greater than 10"
else
    p "This number is less than 10"
end


# Unless
unless my_num > 20
    p "#{my_num} is not greater than 20"
else
    p "#{my_num} is greater than 20"
end


# Input
# gets
puts 'Enter your name:'
name = gets.chomp
puts 'Enter your age:'
age = gets.chomp.to_i
if age > 21
    if name == 'jenner'
        p 'Hey jenner you can drink'
    elsif
        p 'Hey you can drink but you are not jenner'
    end
else 
    p 'Sorry no drinking for you'
end
# p "Hello #{name}, you are #{age} years old." # This looks ugly, use .chomp
# p "Hello #{name.chomp}, you are #{age.chomp} years old."
