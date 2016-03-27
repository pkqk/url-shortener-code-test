# Url Shortener Code Test

We'd like you to create a URL shortening service.
- It should have a route where you can send a POST request with a URL in the body, which
returns a short URL.
- When you send a GET request to a previously returned URL, it should redirect to the
POSTed URL.
- We'd also like a simple frontend that can create and display shortened URLs without
reloading the page.
- For simplicity, don't worry about persisting the URLs between restarts (ie, we don't
need it to talk to an external database).

Use whatever languages and frameworks you are comfortable with. Don't worry about getting
the whole thing working flawlessly, this is more to see how you structure a program. Please
don't spend more than a few hours on it.

## Running the application

### Build the docker image if necessary

    docker build -t farmdrop .

### Run the webserver on port 3000

    docker run --rm -it -p 3000 farmdrop

### Run the rspec tests

    docker run --rm -it farmdrop rspec
