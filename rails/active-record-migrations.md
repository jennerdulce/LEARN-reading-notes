# Migrations

- The whole purpose of `migrations` are to make changes of the overall structure of your table
    - i.e. removing a column, adding a column, editing a column
- A migration is a file that is generated through a rails command that will allow you to make changes to the database. This can include (but not limited to) editing a column's name or data type, adding a new column or removing a column.
- When working with full-stack projects, the columns or data types required in a database table may need to change to accommodate new specifications. This requires changing the shape of your database.
- The schema file cannot be directly edited as it is just a representation of the current state of your database.
- How do we edit the database? With a migration!
- We are able to edit the database by running a Rails generate command to create a migration. The command will require proper naming conventions that communicate the intent of your changes.

## How to add a new column to the database

- `rails generate migration add_column_doors_to_car`
    - Creates a new file in the db > migrate > directory

```ruby
class AddColumnsToList < ActiveRecord::Migration[6.0]
  def change
  # table name, name of columns, data type
    add_column :lists, :item, :string
  end
end
```

- Lastly, `rails db:migrate` will add the new column to the schema / table
- All existing entries will have a value of `nil` for this column

## How to rename an Existing column

- Overview: Rename an existing column
- `rails generate migration change_name_of_doors_to_num_of_doors`
- This convention will only affect the migrate file
    - But what is actually important is what you put into this file

```ruby
class ChangeNameOfDoorsToNumOfDoors < ActiveRecord::Migration[7.0]
  def change
    # Important part
    # table name, column you want to rename, new name of the column
    rename_column :cars, :doors, :num_of_doors
  end
end
```
- Lastly, `rails db:migrate` will update the column

## Change column 

- Overview: Change the datatype
- `rails generate migration change_datatype_of_doors_to_string`
- This convention will only affect the migrate file
    - But what is actually important is what you put into this file

```ruby
class ChangeDatatypeOfDoorsToString < ActiveRecord::Migration[7.0]
  def change
    # Important part
    # table name, column you want to update the datatype, datatype
    change_column :cars, :doors, :string
  end
end
```
- Lastly, `rails db:migrate` will update the column

## Remove Column

- Overview: Remove an existing column
- `rails generate migration remove_column_columnname`
- This convention will only affect the migrate file
    - But what is actually important is what you put into this file

```ruby
class RemoveColumnColumname < ActiveRecord::Migration[7.0]
  def change
    # Important part
    # table name, column you want to update the datatype, datatype
    remove_column :table_name, :column_name
  end
end
```
- Lastly, `rails db:migrate` will remove the column