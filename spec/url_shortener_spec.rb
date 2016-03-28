require "spec_helper"
require "url_shortener"

describe URLShortener do
  it "has a root url" do
    get "/"
    expect(last_response).to be_ok
  end

  it "accepts a request to shorten an URL" do
    post "/shorten", :url => "http://example.com"
    expect(last_response).to be_ok
    response = JSON.parse(last_response.body)
    expect(response).to have_key("key")
    expect(response["url"]).to eql("http://example.com")
  end

end
