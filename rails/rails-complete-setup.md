# Complete Setup

- WRRC
    - REQUEST
        - Action, Location
    - Response
        - Status Code, Payload

## Uploads the Rails app to Github

- Create a empty new Repository on GitHub
- `rails new full-stack-rails -d postgresql -T`
- `cd full-stack-rails`
- `rails db:create`
- `git remote add origin https://github.com/jennerdulce/ruby-fullstack-test.git`
- `git checkout -b main`  ** THIS PART IS IMPORTANT**
- `git add .`
- `git commit -m "Initialization"`
- `git push origin main`
- `git checkout -b branch-name`

## Setup RSpec

- `bundle add rspec-rails`
    - Interaacting with GEM file, (adding rspec-rails)
- `rails generate rspec:install`
    - Creates:
    - `.rspec`
    - `spec` directory
- If you created your model before adding Rspec, you have to Create:
    - spec > models > modelname_spec.rb
- Write tests
- Perform testing
    - `rspec spec/rails/filename`

## Setup MVC

### Model

- `rails g model Herb name:string watered:string`
    - Creates a migrate folder
    - Creates a model class
- `rails db:migrate`
    - db > migrate
    - Creates a table for the model
- `rails c`
    - Takes you into the rails console to be able to make changes
- `Herb.create(name: 'Thyme', watered: 'no')`

### Controller

- `rails g controller ControllerNameSingular`
    - `rails g controller Herb`
    - Same name as the model you used for `rails g model Herb`
- Create Controller Method
    - app > controller > herb_controller
     - Create methods here (should match to views file)

```ruby
class HerbController < ApplicationController
    def index
        @herbs = Herb.all
    end
end
```

### View

- Create Views
- app > views > herb
    - `index.html.erb`

```ruby
<h1>Herbs Project</h1>
<ul>
<% @herbs.each do |value| %>
    <li><%= value.name %></li>
<% end %>
</ul>

```
- The `=` in ERB will DISPLAY on the page

#### Using Alias

```ruby
<ul>
<% @herbs.each do |value| %>
    <%= link_to value.name, show_path(value) %>
<% end %>
</ul>
```

### GENERATE ALL MVC

- `rails g resource Student:string cohort:string`

### Route

- Create Routes
    - config > routes
    - `get '/' => 'herb#index'`

```ruby
Rails.application.routes.draw do
  get '/' => 'herb#index'
end
```
- Find the appropriate controller (herb) and calls the index method

#### Create Alias

- config > routes
```ruby
Rails.application.routes.draw do
  get '/' => 'herb#index'
  get '/show/:id' => 'herb#show', as: 'show'
end
```

- html.erb
```ruby
<ul>
<% @herbs.each do |value| %>
    <%= link_to value.name, show_path(value) %>
<% end %>
</ul>
```

## Create a Migration

- Migrations are changes made to the database
- Making a new column
- `rails generate migration add_column_doors_to_car`
-  app > models > name_of_migration

```ruby
ruby
class ChangeNameOfDoorsToNumOfDoors < ActiveRecord::Migration[7.0]
  def change
    # Important part
    # table name, column you want to rename, new name of the column
    rename_column :cars, :doors, :num_of_doors
  end
end
```
- `rails db:migrate` to save these changes onto the DB
- Refer to migration notes

## PASSING TO ANOTHER

- `rails db:create`
- `rails db:migrate`
- Create some data
- bundle
- yarn

## Route Naming Conventions for CRUD actions

- CRUD
    - HTTP Verb
        - Routes

- Create
    - Post
        - Create
- Read
    - Get
        - Index (all things)
        - Show (one thing)
        - New (form)
        - Get (form)
- Update
    - Put
        - Update
    - Patch
        - Update
- Delete
    - Delete
        - Destory

![Routes](./routes.png)