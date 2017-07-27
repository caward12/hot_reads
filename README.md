# README

## Hot Reads

This app tracks the top-10 most read links from [URL-Lock box](https://salty-ravine-23588.herokuapp.com/)

`Rails 5.0.4`

`Ruby 2.3.0`

This app counts the number of times a link has been read in the URL-lock box app and displays the top 10 links on the index page.

Hot-Reads Production site: https://pacific-earth-63717.herokuapp.com/

URL-Lock box repo: https://github.com/caward12/m4-final-starter

URL-Lock box production: https://salty-ravine-23588.herokuapp.com/

### Setup

1. clone this repo
2. bundle
3. run `rake db:setup` in the command line
4. run `rspec`

### Api

This application features two endpoints

GET `/api/v1/links` returns a list of the top-10 most read links across all users.

POST `/api/v1/links` creates a new link with the url passed in via params. Links default with a read_count of 0 and increase by one each time a link is read in URL-Lock box.

#### Final Assessment

This application, in conjunction with URL-Lock box is the final assessment for the back-end engineering program at Turing School.
