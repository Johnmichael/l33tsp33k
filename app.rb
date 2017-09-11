require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
# require('./lib/leetspeak')
require('pry')

get('/') do
  @description = "This application will leetspeak an inputted string"
  erb(:input)
end

get('/output') do
  @str = params.fetch("string")
  array = @str.split(" ")
  (0..array.length-1).each do |j|
    word = array[j]
    for i in 0..word.length-1 do
      if word[i] == 'e'
        word[i] = '3'
      elsif word[i] == 'o'
        word[i] = '0'
      elsif word[i] == 'I'
        word[i] = '1'
      elsif word[i] == 's' && i != 0
        word[i] = 'z'
      end
    end
  end
  @leetspeak = array.join(" ")
  erb(:output)
end
