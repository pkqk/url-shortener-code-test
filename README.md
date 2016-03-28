# Url Shortener Code Test

A very simple non-persistant url shortener

## Running the application

I've tried developing the app in docker just for the hell of it but if that doesn't work you can run the app with:

    bundle install
    bundle exec rackup -p 3000

### Build the docker image if necessary

    docker build -t farmdrop .

### Run the webserver on port 3000

    docker run --rm -it -p 3000 farmdrop

### Run the rspec tests

    docker run --rm -it farmdrop rspec
