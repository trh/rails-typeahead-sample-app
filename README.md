#TypeAhead Rails Sample App

There are lots of tutorials - this is just another example, but maybe it will help to have it in code where you can plan and make changes.  Follow the normal steps.

> git clone https://github.com/trh/rails-typeahead-sample-app

> bundle install

> bundle exec rake db:migrate

The actual app functionality is comprised of 6 steps:

1. Grab the twitter bundle -- http://twitter.github.io/typeahead.js/releases/latest/typeahead.bundle.js (put it in vendor assets and then require it in your app.js)
2. Add an input in your view (see app/views/listings/index.html.erb)
3. Create a short js script to process input (see app/assets/javascripts/main.js)
4. Add a params check in the controller action for the autocomplete query (see app/controllers/listings_controller.rb)
5. Create 2 model methods, one for tokens and one for an advanced search (app/models/listing.rb)
6. Add a json jbuilder file to output the correct json (app/views/listings/index.json.jbuilder)