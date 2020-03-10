require 'rspec'
require 'cucumber'
require 'httparty'
require 'faker'

require_relative 'instance_services'
require_relative 'helpers'
World(InstanceServices)
World(Helpers)

Faker::Config.locale = 'pt-BR'

$data_books = YAML.load_file("./features/support/data/books.yml")         

class Books
    include HTTParty
    base_uri 'http://fakerestapi.azurewebsites.net'
    default_params output: 'json'
end