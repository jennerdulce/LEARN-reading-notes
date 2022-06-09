# Ruby Objects Classes and Inheritance

# Creating a Basic Class Using Getters and Setters

class Person
    # these are like any other method. This set_name method takes in an argument and sets a the property called name (designated by the @ symbol)
    def set_name(name)
        @name = name
    end

    def get_name
        @name
    end
end

# @ is similar to 'this'
# Use of getters and setters
# Setters: Methods or parameters to change the Instance Variables / properties of an instantiated object
# Getters: Retrieve the values (read) the data of this class
# When using setters and getters, there is no instantiation

# Using getters and setters
person_one = Person.new # Instantiate an object from a class
person_one.set_name("Karen") # Set a Instance Variable using a 'setter'
person_one.get_name # Retrieve an Instance Variable by using a 'getter'


# Instantiation

class Ball
    # Use the keyword 'initialize' with arguments
    # Again, @ is similar to this
    def initialize(color, size, isBouncy, material)
        # Instance Variables
        # Belong to an 'instance' of a class (an object)
        # Each 'instance' of the class Ball has its own set of instance variables that are independent of other Ball objects
        @color = color
        @size = size
        @isBouncy = isBouncy
        @material = material
    end

    # Have to use methods in order to retrieve the data that you want
    def color
        @color
    end
    def size
        @size
    end
    def is_bouncy
        @isBouncy
    end
    def material
        @material
    end
end

ball_one = Ball.new('blue', '12in', true, 'rubber')
p ball_one.color

# Default instantiation
# We pre-set an the instance variable 'colors' with an empty array
class Flag
    def initialize
        @colors = []
    end

    def colors
        @colors
    end
end

# The value of the 'colors' instance variable is an empty array
# Since we know this, we can use a shovel to add elements to the array
american_flag = Flag.new
american_flag.colors << "Red"
american_flag.colors << "White"
american_flag.colors << "Blue"
p american_flag.colors

mexican_flag = Flag.new
mexican_flag.colors << "Red"
mexican_flag.colors << "White"
mexican_flag.colors << "Green"
p mexican_flag.colors


# Passing a Hash as an argument
class Music
    attr_accessor :para
    def initialize para
        @para = para
    end
end

test = Music.new({:title => 'someSong', :artist => 'someArtist'})
p  test.para[:title] # someSong
p  test.para[:artist] # someArtist


# attr_accessor
# attr_accessor AUTOMATICALLY creates getters and setters for instance variables
# This allows us to retrieve information from objects similar to JavaScript

# attr_accessor boilerplate

class Dog
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def information
        "#{name} is #{age} years old."
    end

end

# Using attr_accessor, you can access instance variables / properties of an instantiated object without getters and setter
dog_one = Dog.new("Fang", 4)

# Getter
p dog_one.name
p dog_one.age
p dog_one.information

# Setter
# You can also easily change instance variables
dog_one.age = 5
p dog_one.age

# Ruby Class Inheritance
# Lets inherit from the Dog class

class Malamute < Dog
    # Make sure you use your accessor or getters and setters
    attr_accessor :breed
    # Order of inherited variables does not matter
    def initialize(age, name, breed)
        # Keyword super in order to inherit
        super(age, name)
        @breed = breed
    end

    def info_plus_breed
        "#{name} is a #{breed} and is #{age} years old."
    end
end
fang = Malamute.new("Fang", 4, "Malamute")
p fang.name
p fang.age
p fang.breed
p fang.info_plus_breed

# Challenges
# For the following Task challenge, use initialize and getter methods in your class
# As a developer, I can create a class called Task.
# As a developer, I can create three instances (objects) of class Task. (e.g laundry = Task.new)
# As a developer, I can initialize each instance of class Task with a title.
# As a developer, I can see the title of each instance of class Task.
# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# As a developer, I can update the status of each instance of class Task when the task has been completed.

class Task
    def initialize title
        @title = title
        @is_complete = 'incomplete'
    end

    def get_title
        @title
    end
    
    def get_is_complete
        @is_complete
    end

    def completed
        @is_complete = 'completed'
    end
end

laundry = Task.new('Laundry Title')
dishes = Task.new('Dishes Title')
study = Task.new('Study Title')
p laundry.get_title
p laundry.get_is_complete # incomplete
p laundry.completed # changes the instance variable is_complete to 'completed'
p laundry.get_is_complete # complete

p dishes.get_title
p study.get_title


# For the following ColorPalette challenge use initialize and attr_accessor methods in your class
# As a developer, I can create a class called ColorPalette.
# As a developer, I can create three instances (objects) of class ColorPalette. (e.g green = ColorPalette.new)
# As a developer, I can initialize each inistance of the class ColorPalette with three colors. (e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam'))
# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.

class ColorPalette
    attr_accessor :color1, :color2, :color3

    def initialize(color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end

    def colors
        "The colors of this pallette are: #{color1}, #{color2}, and #{color3}."
    end
end

green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
blue = ColorPalette.new('Baby Blue', 'Sky Blue', 'Royal Blue')
p blue.color1
p blue.color2
p blue.color3
p blue.colors

# Animal Kingdom
# As a developer, I can make an Animal (generic Animal class).
# As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# As a developer, I can give my Animal an age of 0 upon creation.
# As a developer, I can age my Animal up one year at a time.
# As a developer, I can return my Animal's age, as well as if they're alive.
# Hint: Use attr_accessor as well as an initialize method.

class Animal
    attr_accessor :status, :age
    def initialize(status='alive', age=0)
        @status = status
        @age = age
    end

    def add_year
        @age += 1
    end

    def dies
        @status = 'deceased'
    end
end

some_animal = Animal.new
p some_animal.age # age = 0
p some_animal.status # status = 'alive'
some_animal.add_year
some_animal.add_year
p some_animal.age # age = 2
p some_animal.dies
p some_animal.status # status = 'deceased'

# As a developer, I can create a Fish that inherits from Animal.
# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)

class Fish < Animal
    attr_accessor :blood

    def initialize(blood="cold blooded", status='alive', age=0)
        super(status, age)
        @blood = blood
    end
end

nemo = Fish.new
p nemo.status
p nemo.age
p nemo.blood
p nemo.add_year
p nemo.age
p nemo.dies


# As a developer, I can create a Salmon that inherits from Fish.
# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# As a developer, I can see that my Salmon is cold-blooded.
# As a developer, I can age my Salmon up.
# As a developer, I can see a message that tells me all of my Salmon's information.
# As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Salmon < Fish
    attr_accessor :species
    def initialize(species)
        super(blood="cold blooded", status='alive', age=0)
        @species = species
    end

    def add_year
        if @age >= 3
            @status = 'deceased'
        else
            @age += 1
        end
    end

    def salmon_info
        "Salmon Info
        Species: #{@species}
        Status: #{@status}
        Age: #{@age}
        Type of blood: #{@blood}"
    end
end

sammy = Salmon.new('Atlantic')
p sammy
p sammy.add_year
p sammy.add_year
p sammy.add_year
p sammy.add_year
puts sammy.salmon_info




# As a developer, I can create a Mammal that inherits from Animal.
# As a developer, I can initialize all of my Mammals to be warm_blooded.
# As a developer, I can create a Bear that inherits from Mammal.
# As a developer, I can age my Bear up.
# As a developer, I can see a message that tells me all of my Bear's information.
# As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# As a developer, I can create a Mammal of my choice.
# As a developer, I can interact with the new Mammal via various methods.
# As a developer, I can see a message that tells me all of my new Mammal's information.
# STRETCH: As a developer, I can keep a collection of two of each Animal.
# Hint: You'll want to add your Animals into an array.
# STRETCH: As a developer, I can sort my collection of Animals based on age.
# Hint: Find out how the spaceship operator can help you with an array.
# SUPER STRETCH: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.
