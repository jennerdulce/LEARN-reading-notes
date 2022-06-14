# Routes View Controllers Params

## Overview

- Rails anatomy
- Routes, rails, and their different different parts
    - URL
    - Controller Name
    - Method Name
- Generate command for controller
- Learn to create views
- Pass parameters to those views to make them dynamic and have relevant info show up on screen
- Create Views with ERB

`rails new food_app -d postgresql -T -G`

## HTTP Verbs
- Post
- Get
- Put
- Patch
- Delete

## CRUD Actions
- Create
- Read
- Update
- Delete

## Controller
### Generate Command for Contoller

- `rails g controller Food`

```
➜  food_app rails g controller food
      create  app/controllers/food_controller.rb
      invoke  erb
      create    app/views/food
      invoke  helper
      create    app/helpers/food_helper.rb
```

- Will be responsible for handling all food requests that will happen for our food app
    - Creates new file app > controller > food_controller
    - Can create Instance Variable and Methods

```ruby
class FoodController < ApplicationController
end


class FoodController < ApplicationController
    def tacos
        render html: "Hello World"
    end

    def sushi
        render html: "I love sushi"
    end
end

```

- In order to access this method in the class, we need to set a route
- Create a route in order to map this route
    - config > routes
    - HTTP Verb '/route-name'
    - =>
    - 'name_of_our_controller#name_of_our_method' NOTE: single quotes
        - Says: "Go in to the FOOD controller in the controller folder and find this method 'tacos'
    ```ruby
    get '/tacos' => 'food#tacos'
    get '/jenner' => 'food#sushi'
    ```

### Recap

- Made an app
- Create a DB
- Generate a Controller
    - `rails g controller Name`
- Set up Controller with a few methods
- Map a Route into Actions
    - Ties the Controller Method to a Route
    - config > routes
    - HTTP Verb '/route-name'
    - =>
    - 'name_of_our_controller#name_of_our_method' NOTE: single quotes
        - Says: "Go in to the FOOD controller in the controller folder and find this method 'tacos'"
        
    ```ruby
    get '/tacos' => 'food#tacos'
    get '/jenner' => 'food#sushi'
    ```

## Views

### ERB

- The symbols `<%= %>` allow us to escape the HTML and embed Ruby syntax and logic. By wrapping our Ruby code in those symbols, it will execute on the page and then print the outcome.

- (Today) We will amke views the old fashion way.
- /app/views/food
    - Create a new file called method_name.html.erb
- app > food > tacos.html.erb
- Controller and Views file must be within the same Class (Food)
- Used Instance Variables to transmit data to our views

## Process Creating a new Route
- Create a new route: config > routes.rb
    - `get '/tacos' => 'food#sushi'` Using this convention
- Create a controller to handle the route: app > controllers
```ruby
 def tacos
    @ingredients = ['steak', 'cheese', 'sour cream']
end
```
- Create a view: app > views > controllername.html.erb
    - `tacos.html.erb`
    - name should match the name of the controller

- Model - Database / Brains
    - rails g new model ModelName one:datatype
- View
    - Is a html.erb document that displays content to the user
- Controller
    - Links view and model together
    - Consists of Class name and methods pertaining to the route
    - Uploading info directly from a controller syntax
        - Nothing, the view will be  uploaded from the route utilizing a html.erb file
- What makes up a route:
    - HTTP verb
    - `/routename`
    -  =>
    - `classname#methodname`

## Params

- Way to make changes while application is running
- Params allow us to take information to from the user / user expereicne and pass it to our application
- in Controller
```ruby
   def sushi
        @flavor = "Cheese"
    end
```
- IN html.erb
```ruby

<p><%= @flavor %> Cheesecake</p>
```

- NEW
```ruby
   def sushi
        @flavor = params[:flavor]
    end
```
- The symbol can be whatever