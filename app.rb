require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/Word')
require('./lib/WordList')

configure do
  @@wordList = WordList.new()
end

get('/') do
  erb(:index)
end

get('/dictionary') do
  erb(:dictionary)
end


get('/add_word') do
  erb(:add_word)
end

post('/add_word') do
  if ((params[:word_name]!=nil) && (params[:word_name]!=''))
    newWord = Word.new((params[:word_name]))
    if ((params[:word_definition])!=nil && (params[:word_definition]!=''))
      newWord.add_definitions(params[:word_definition])
    end
    @@wordList.add(newWord)
  end
  erb(:dictionary)
end

get('/delete/:word_name') do
  word= params[:word_name]
  @@wordList.delete(word)
  erb(:dictionary)
end

get('/add_definition/:word_name') do
  if ((params[:word_name]!=nil) && (params[:word_name]!=''))
    @word =@@wordList.find(params[:word_name])
    erb(:add_definition)
  else
    erb(:dictionary)
  end
end


post('/add_definition') do
  theWord = params[:word_name]
  theWordDefinition = params[:word_definition]
  if (theWord!=nil && theWordDefinition!=nil && theWord!='' && theWordDefinition!='')
      word = @@wordList.find(theWord)
      word.add_definitions(theWordDefinition)
      @@wordList.update(word)
    end
  erb(:dictionary)
end