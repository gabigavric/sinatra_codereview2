class WordList
  @dictionary;

  def initialize()
    @dictionary = []
  end

  def all
    @dictionary
  end

  def find(name)
      @dictionary.each do |word|
        if word.word_name == name
          return word
        end
      end
    nil
  end

  def add(word)
    #check to see if word is in list
    if (find(word.word_name)==nil)
      @dictionary.push(word)
    else #update the word
      update(word)
    end


  end


  def delete(name)
    i = 0;
    while (i <= @dictionary.size)
      if (@dictionary.at(i).word_name == name)
        @dictionary.delete_at(i)
        break
      end
      i +=1
    end
  end


  def update(word)
    i = 0;
    while (i <= @dictionary.size)
      if (@dictionary.at(i).word_name == word.word_name)
        @dictionary.delete_at(i)
        @dictionary.push(word)
        break
      end
    end
  end


end