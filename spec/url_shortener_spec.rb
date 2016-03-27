require "spec_helper"
require "url_shortener"

describe URLShortener do
  it "has a root url" do
    get "/"
    expect(last_response).to be_ok
  end
end
