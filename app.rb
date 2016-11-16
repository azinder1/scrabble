require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')
require('rspec')
require('capybara')
require('pry')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @score = params.fetch('scrabble').scrabble()
  erb(:scrabble)
end
