# README

This API is written in Ruby 2.6.1 with Rails 5.2.3 and makes use of an sqlite3 database. To begin with cd to the top level of the dogs-api directory and run `bundle install`. 

The data base contains only 1 table holding data on dogs. The single table has the following columns: name, breed, age, size, phrase, created_at, and updated_at. All columns hold string data except the last two which have datetime data types. e.g.
```json
{
    "id": 187,
    "name": "Baby",
    "breed": "Walker Hound",
    "age": "puppy",
    "size": "medium",
    "phrase": "thicc doggo",
    "created_at": "2020-11-30T17:38:20.556Z",
    "updated_at": "2020-11-30T17:38:20.556Z"
  }
  ```

In order to initialize the database run `rails db:migrate` from within the parent directory of the API. To instantiate some data run `rails db:seed`.

The api will respond only to the route `/dog_search` with a `GET` request. The route will accept a non-case-sensitive `query` parameter and a `sort_field` parameter (optional). The api will return a json response with all dogs that have at least one field that matches the query parameter. If a `sort_field` parameter is passed the response will be sorted alphabetically by the `sort_field` if no parameter is passed `sort_field` will default to `name`. For example if `sort_field` is set to breed the json response will be sorted alphabetically by breed. 

Examples assuming the api is hosted on `http://localhost:300`:

`http://localhost:300/dog_serach?query=puppy&sort_field=phrase` Will return a json repsonse containing all dogs that are puppies and sort them by their phrase

or 

`http://localhost:3000/dog_search?query=terrier&sort_field=age` Will return all dogs with the word terrier contained in thier data and organize them by age.
