require 'spec_helper'
require 'rack/test'
require 'app.rb'

describe 'app' do
  include Rack::Test::Methods

  def app
    DatabaseServer
  end

  it 'says hello' do
    get '/' 
    expect(last_response.body).to eq('Hello World')
  end
end
