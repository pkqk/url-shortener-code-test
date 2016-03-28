# Url Shortener Code Test

A very simple non-persistant url shortener

## Running the application

### Running from docker repository

I've pushed an image up to the docker hub so you should be able to run the
app without setting anything up:

    docker run --rm -it -p 3000:3000 pkqk/farmdrop

If docker isn't your thing then you can run the app with:

    bundle install
    bundle exec rackup -p 3000

### Building and running the docker image from a checkout

Build the docker image if necessary:

    docker build -t farmdrop .

Run the webserver on port 3000:

    docker run --rm -it -p 3000:3000 farmdrop

Run the rspec tests:

    docker run --rm -it farmdrop rspec

## Known issues

1. It's javascript only, I'd change this by content negotiation on the form
   action and rendering a template with the result for html posts
2. It doesn't validate the form or check for empty form submissions
3. It doesn't do any de-deduplication of URLs
4. The javascript is untested
