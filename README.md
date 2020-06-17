# Database Server Tech Test

This is a tech test I did based on this [brief](https://github.com/makersacademy/course/blob/master/individual_challenges/database_server.md).

It uses Sinatra and Active Record to act as an API.

To save data:

`http://localhost:4000/set?somekey=somevalue`


To retrieve data: 

`http://localhost:4000/get?key=somekey`

## Installation

Fork the repo, navigate to the root folder and run the following commands.

`bundle install`

`rake db:migrate`

`rake db:migrate RACK_ENV=test`

## Usage

To run (on port 4000 as specified in the brief) type the following, and navigate to the aforementioned URLs.

`rackup -p 4000` 

## Testing

This has unit tests (rspec) and feature tests (capybara). Only one for each but both cover the full functionality required. The table in the test database truncates after each test to avoid false positives.