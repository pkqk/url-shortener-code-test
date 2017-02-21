require "securerandom"
require "sinatra"
require "sinatra/json"

class URLShortener < Sinatra::Base
  set :urls, {}
  set :views, "views"

  get "/" do
    erb :home
  end

  post "/shorten" do
    key = SecureRandom.urlsafe_base64(6)
    url = params[:url]
    settings.urls[key] = url
    json :key => key, :url => url, :short_url => url("/#{key}")
  end

  get "/:key" do
    redirect settings.urls[params[:key]]
  end
end
