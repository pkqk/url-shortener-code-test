require "rack/test"
require "rspec"

ENV["RACK_ENV"] = "test"

module WebAppTest
  include Rack::Test::Methods
  def app()
    described_class
  end
end

RSpec.configure { |c| c.include WebAppTest }
