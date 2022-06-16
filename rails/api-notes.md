# Rails API / Postman

- APIs do not have a UI / Views

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