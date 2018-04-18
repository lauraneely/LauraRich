require File.expand_path '../../server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
  include Rack::Test::Methods

  def app() Sinatra::Application end

  it 'displays the homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end
it 'displays the company name: Prototype Inc' do
  get '/'
  expect(last_response.body).to include "Prototype Inc."
end
it 'displays text within jumbotron' do
  get '/'
  expect(last_response.body).to include "A prototype is an early sample, model, or release of a product built to test a concept"
end
end