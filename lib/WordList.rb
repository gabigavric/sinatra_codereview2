class WordList
  @words = []

  def self.all
    @words
  end

  def self.find(name)
    @words.each do |word|
      if word.name == name
        return word
      end
    end
  end

  def self.add(word)
    #check to see if word is in list
    if(find(word.name)==null)
      @words.push(word)
    else #update the word
      update(word)
    end


  end


  def self.delete(name)
    i = 0;
    while (i <= @words.size)
      if(@words.at(i).name == name)
        @words.delete_at(i)
        break
      end
    end
  end


  def self.update(word)
    i = 0;
    while (i <= @words.size)
      if(@words.at(i).name == word.name)
        @words.delete_at(i)
        @words.push(word)
        break
      end
    end
  end


end