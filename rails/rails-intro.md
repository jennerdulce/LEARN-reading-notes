# Ruby on Rails
- A collection of Gems built in the ruby language as a framework
- RAILS IS OPINIONATED 
    - "Convention over Configuration"
    - Rails has a way of doing things and it doesn't want you to mess with how it gets done
    - It is SUPER picky
- DHH, Full Stack Applications Quickly
    - "Look at all the things I am NOT doing" - DDH Ruby Conf '04
- MVC Architecture (Model View Controller)
    - Model: Memory
        - Money Maker
        - Business Center of our application
        - Handles the logic of our database(s), as well as the relationship between our database tables
    - View: What a person actually sees, interacts with, ad hands information to
    - Controller: Brains, decision maker of our application 
        - Handles people friendly URLS, requests and responses of the application
        - Routes / Endpoints
- A user to see somethingm input data, have that data saved for future references, retrieve data, or process the data and interact with it again: A Full Stack Application

# Setup
- In the terminal `rails new`
- Takes a few arguments:
    - Name of the application (snake_case, singular)
    - What database we want to use `-d`
    - What we want to do with out testing environment `-T`
    - `rails new rails_intro -d postgresql -T`
- cd into the new directory
- Run the command `rails db:create`
    - Creates a database
- Run the command `rails server`