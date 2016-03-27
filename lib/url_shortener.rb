require "sinatra"

class URLShortener < Sinatra::Base

  get "/" do
    content_type "text/plain"
    return "I shorten urls"
  end

end
