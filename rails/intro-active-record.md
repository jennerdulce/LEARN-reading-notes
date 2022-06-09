# Active Record

- Active Record is a GEM
- ORM (Object Relational Mapping)
- To write DB queries in Ruby like methods
- A layer that exists around the Database handling all the requests and responses to and from the database
- Active Record maps ruby objects to rows in the database
- Ruby is VERY OOP // Active Record following that style of data creation and representation using tables and rows
- Active Record gives us a primary key for every instance in our database
- Allows us to treat DB tables as if they were Ruby Classes
- Our tables can have relationships to one another like ruby classes

- Our databse needs some structure and the ability to take in and save info

## Rails Generate Commands

1. Generate Commands
2. Active Record Data Type

- Give rails instructions to make things for us
- To make a table / model in our database, an Active Record class
- `rails generate model`
- Takes in a few arguments:
    - The name of the model
        - PascalCase and singular
    - The names of the coulmn headers
- dates :date
- times :time
- location
    - lat: float
    - long: float
- day of the week :string
- title / event :string
- tasks :text

## CREATING THE M in MVC

- `rails generate model Schedule day:string date:date event:string`
    - Creates a model
    - Creates a migration in order to update
- `rails db:migrate`
    - Creates a Schema
- `rails console`
    - The space where developers can interact with Active Record and AR can write queries for us to interact with the database
    - Table name
    - `Schedule.all`
- Create some data `Tablename.create`
    - `Schedule.create day:'Thursday', date:Date.today, event:'Walk the dog'`

## Find

- Active record method `.find` takes an argument of an id and returns only that instance of the database as an object
    - `Schedule.find 1`

# Where

- `Schedule.where(day: 'Thursday')`
- Returns an array with all the objects that have the value of 'Thursday' to date

# Update

- First target the instance of the table
- `edit_instance = Schedule.find 1` or `edit_stance = Schedule.first`
- `edit_stance.update day:'Monday', date:Date.today, event:'AR llecture'`

# Delete

- First target the instance of the table
- `edit_instance = Schedule.find 1` or `edit_instance = Schedule.first`
- edit_isntance.delete


## References

- [AR data types](https://www.uday.net/rails-datatypes-for-ActiveRecord)