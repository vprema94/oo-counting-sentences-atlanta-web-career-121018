require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = []
    self.split.each do |word|
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
        array << word
      end
    end
    array.count
  end
end
