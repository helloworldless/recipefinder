require 'httparty'

class Recipe
  include HTTParty

  @key_value = ENV["FOOD2FORK_KEY"]
  @hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || 'food2fork.com'
  base_uri "http://#{@hostport}/api"
  #base_uri 'http://food2fork.com/api'
  default_params key: @key_value#ENV["FOOD2FORK_KEY"]
  format :json

  def self.for term
  	#puts @key_value
  	#puts @hostport
  	#puts "#{@hostport}/api"
    get("/search", query: { q: term})["recipes"]
  end

end