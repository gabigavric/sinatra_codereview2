class Word
  @word_name
  @definitions

  def initialize(word_name)
    @word_name = word_name
    @definitions = []
  end

  def add_definitions(word_definition)
     @definitions.push(word_definition)
  end

  def get_definitions
     @definitions
  end

  def word_name
      @word_name
  end
end