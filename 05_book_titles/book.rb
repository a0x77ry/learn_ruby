class Book
  attr_reader :title


  def initialize(title="Title")
	@title = title
    @littleWords = ["the", "a", "an", "and", "in", "of"]
  end

  def title=(title)
    titleWords = title.split
    titleizedWords = []

    titleWords.each_with_index do |word, i|
      if i == 0 or not @littleWords.include?(word) or word == "i"
        titleizedWords.push(word.capitalize)
      else
        titleizedWords.push(word)
      end
    end

    @title = titleizedWords.join(" ")
  end
end
