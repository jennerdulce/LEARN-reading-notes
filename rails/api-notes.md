# Rails API / Postman

- APIs do not have a UI / Views
- ***WHEN FIRST CLONING A RAILS REPO ***USE TERMINAL COMMAND
    - `bundle`

## RESTful Routes

- index
- show
- create
- update
- destory
- Need to create a method for each route

## CREATE MVC

- `rails g resource Student:string cohort:string`
- DELETE VIEWS FOLDER
- DELETE HELPER FILE
    - `rm -r app/views/students`
    - `rm -r app/helpers/students_helper.rb`
- `rails routes -E`
```
--[ Route 1 ]-------------------------------------------------------------------
Prefix            | students
Verb              | GET
URI               | /students(.:format)
Controller#Action | students#index
--[ Route 2 ]-------------------------------------------------------------------
Prefix            | 
Verb              | POST
URI               | /students(.:format)
Controller#Action | students#create
--[ Route 3 ]-------------------------------------------------------------------
Prefix            | new_student
Verb              | GET
URI               | /students/new(.:format)
Controller#Action | students#new
--[ Route 4 ]-------------------------------------------------------------------
Prefix            | edit_student
Verb              | GET
URI               | /students/:id/edit(.:format)
Controller#Action | students#edit
--[ Route 5 ]-------------------------------------------------------------------
Prefix            | student
Verb              | GET
URI               | /students/:id(.:format)
Controller#Action | students#show
```
- Create some entries in your database

## In Postman:
- Based on route 1: GET `localhost:3000/students`
- Based on Route 4: GET`localhost:3000/students/1`
- Trying to search for something that does not exist `localhost:3000/students/1`
    - Click Preview in Postman to check a better error


### Post

- DISABLE AUTHENTICITY
    - app > controllers > parent controller
    - `skip_before_action :verify_authenticity_token`
- Based on route 2: POST `localhost:3000/students`
    - Add the Body
        - Click body tab
        - Click raw radio button
        - Select JSON on dropdown

```json
{
   "name": "Karen",
   "cohort": "Charlie"
    
}
```

## EXAMPLE OF CONTROLLER FOR API

```ruby
class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end

    def create
        student = Student.create(student_params)
        if student.valid?
            render json: student
        else
            render json: student.errors
        end
    end

    def destory
        student = Student.find(params[:id])
        student.destroy
    end

    private
    # Strong parameter
    def student_params
        params.require(:student).permit(:name, :cohort)
    end
end

```

## Branch protections

- Settings > Branches > Rule
    - Require a pull request before merging
    - Require a a verification

## Seeds

- ARE NOT YOUR DATABASE
- A ruby file that has a data structure of an array of objects
- Special place where we put mock data in order to load our database very quickly in case we 'lose' it somehow
- Initializes database with instances in it
- `rails db:seed`
- `rails db:drop`
    - drops our database
- rails > db > seeds.rb
- Be sure to NOT INCLUDE an id
- Idempotency: WHenever something is done, it is done uniquely
    - You can run `rails db:seed` twice it will create another set but each instance will be unique bc of id

```ruby
cats = [
    {
      name: 'Mittens',
      age: 5,
      enjoys: 'sunshine and warm spots',
      image: 'https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
    },
    {
      name: 'Raisins',
      age: 4,
      enjoys: 'being queen of the dogs',
      image: 'https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1092&q=80'
    },
    {
      name: 'Toast',
      age: 1,
      enjoys: 'getting all the attention',
      image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
    }
  ]

# 
cats.each do |cat|
    Cat.create cat
end

p Cat.all
p "Cat's created VIA Seed: OK"
```

- `rails db:seed`
    - injects data in db
- `rails db:drop`
    - removes database
- `rails db:setup`
    - runs rails db:seed
    - runs rails db:create

## CORS Cross Origin Resource Sharing

- app > controllers > application_controller.rb

```ruby
class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
end
```

- `bundle add rack-cors`
    - Check Gemfile to see if it was installed (at the bottom)

- config > initializers 
- create file cors.rb

```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'  # <- change this to allow requests from any domain while in development.
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
```
- `bundle`
- similar to running `yarn i` in react

## API Endpoints

### STUBS

- app > controllers

```ruby
class CatsController < ApplicationController

    def index
    end

    def show
    end

    def create
    end

    def destory
    end

    # private
    # # Strong parameter
    # def cat_params
    #     params.require(:cat).permit(:name, :age, :enjoys, :image)
    # end
end
```

- Creates tests within `spec` folder
- spec > requests > cats_spec.rb

```ruby
require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do # an Endpoint
    it "gets all the cats from the database" do
      # Create a test to ensure /index and index method is responding correctly
      # I need something in my testing database to get back from the request
      Cat.create name:'Bentley', age:1, enjoys:'food', image:'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVubnklMjBjYXR8ZW58MHx8MHx8&w=1000&q=80'

      # cat_tinder_backend_test: created by rails db:drop
      # I need to make a request to my application
      get '/cats'

      # Define a variable that is the response
      bentley = JSON.parse(response.body)

      # I need to assert that the response is correct
      # Status Code
      expect(response).to have_http_status(200)
      
      # Payload
      expect(bentley.length).to eq 1
    end   
  end

  describe "POST /create" do # an Endpoint
    it "creates a new cat and adds it to the database" do
      # Create a test to ensure /create and create method is responding correctly
      # I need to send something to my application and have it added to my database
      cat_params = {
        cat: {
            name:'Bentley', 
            age:1, 
            enjoys:'food', 
            image:'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVubnklMjBjYXR8ZW58MHx8MHx8&w=1000&q=80'
        }
      }

      # cat_tinder_backend_test: created by rails db:drop
      # I need to make a request to my application
      post '/cats', params: cat_params

      # I need to assert that the response is correct
      # Status Code
      expect(response).to have_http_status(200)
      
      # Define a variable that is in the database
      bentley = Cat.first
      expect(bentley.name).to eq 'Bentley'
      expect(bentley.age).to eq 1
      expect(bentley.enjoys).to eq 'food'
    end   
  end
end


```

- Run TESTS
  - `rspec spec/requests/cats_spec.rb`

## Validations

- Goal: Get the correct response with errors
- spec > models > cat_spec.rb
