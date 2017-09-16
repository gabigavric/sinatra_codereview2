class Word
  @word_name
  @defenitions = []

  def initialize(name)
    @word_name = name
  end

  def add_definitions(definition)
     @defenitions.push(definition)
  end

  def get_defentitions()
     @defenitions
  end

  def name()
      @word_name
  end
end