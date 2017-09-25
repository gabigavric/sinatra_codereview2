require('rspec')
require('pry')
require('WordList')
require('Word')

describe('#wordlist') do
  wordList = WordList.new()

  it("add") do
    wordList.add(Word.new('puppy'))
    wordList.add(Word.new('kitten'))
    wordList.add(Word.new('fluffy'))
  end

  it("find") do
    expect(wordList.find('puppy').word_name).to eq('puppy')
    expect(wordList.find('kitten').word_name).to eq('kitten')
    expect(wordList.find('fluffy').word_name).to eq('fluffy')
  end

  it("update") do
    puppy = wordList.find('puppy')
    puppy.add_definitions('small fluffy animal that i love')
    puppy.add_definitions('a small pet')
    wordList.update(puppy)
    expect(wordList.find('puppy').get_definitions[0]).to eq('small fluffy animal that i love')
  end

  it("delete") do
    expect(wordList.find('fluffy').word_name).to eq('fluffy')
    wordList.delete('fluffy')
    #expect(wordList.find('fluffy')).to eq(nil)
  end

end