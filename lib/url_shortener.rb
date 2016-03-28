require 'securerandom'
require "sinatra"
require "sinatra/json"

class URLShortener < Sinatra::Base
  set :urls, {}

  get "/" do
    content_type "text/plain"
    return "I shorten urls"
  end

  post "/shorten" do
    key = SecureRandom.urlsafe_base64(6)
    url = params[:url]
    settings.urls[key] = url
    json :key => key, :url => url
  end

  get "/:key" do
    redirect settings.urls[params[:key]]
  end

end
