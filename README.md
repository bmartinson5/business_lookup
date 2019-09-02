# Business Lookup

#### Author: Ben Martinson

## Description

This is a rails crud API for a local business database, including random lookup and searching by name of business. Includes versioning, exception handling and model scopes.

## Setup/Installation Requirements

* Clone the repository
* Navigate to project directory using cd in terminal
* Install ruby and rails globally (gem install rails inside root directory)
* Use'bundle install' to load the Gems from the Gemfile
* Start a postgres server in the background
* To run the program, use 'rails start'
* Open a web browser and navigate to the url: http://localhost:3000

## Api Endpoints

Method: GET   Action: Retrieves all local businesses
* localhost:3000/v1/businesses/

Method: GET   Action: Retrieves a specific business by id
* localhost:3000/v1/businesses/:id

Method: POST   Action: Creates a new business in the database
* localhost:3000/v1/businesses/

Method: DELETE  Action: Deletes a business by id
* localhost:3000/v1/businesses/

Method: PATCH  Action: Updates a existing business by id
* localhost:3000/v1/businesses/

Method: GET   Action: Searches for a business by name (returns all that are similar)
* localhost:3000/v1/business/name?name="[enter name here]"

Method: GET   Action: Retrieves a random business
* localhost:3000/v1/business/random

Method: GET   Action: Retrieves top 3 businesses with the most_branches
* localhost:3000/v1/business/most_branches

## Support and contact details

If you find a bug, run into any issues, please email benmartinson92@gmail.com

## Technologies Used

* Ruby
* RubyGems
* Rails
* Postgres

### License

MIT License
Copyright (c) 2019 Benjamin Martinson
