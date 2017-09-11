require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/leetspeak')
require('pry')

get('/') do
  @description = "This application will leetspeak an inputted string"
  erb(:input)
end

get('/output') do
  @str = params.fetch("string")
  # array = @str.split(" ")
  sentence = Leetspeak.new(@str)
  @leetspeak = sentence.leetspeaker
  erb(:output)
end
