require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/finalproject.rb'
require './lib/scraping.rb'

get '/' do
  @stock = Stock.new("mu")
  @stock2 = Stock.new("vmc")
  @stock3 = Stock.new ("panw")
  erb :index
end

