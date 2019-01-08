require 'pry'

class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end



  # def initialize(word)
  #   @word = word.downcase
  # end
  #
  # def split_word
  #   word.split(" ")
  # end
  #
  # def split_letters
  #   split_word.map {|word| word.split("")}
  # end
  #
  # def find_vowel
  #   hash = {}
  #   split_letters.each do |word|
  #     n = 0
  #     word.find do |i|
  #       n += 1
  #       i == "a" || i == "e" || i == "i" || i == "o" || i == "u"
  #     end
  #     hash[word.join] = n-1
  #   end
  #   hash
  # end
  #
  # def piglatinize
  #   pig_latin = []
  #   find_vowel.each do |word, n|
  #     if word.length > 2
  #       back = word.split("").slice(0..(n-1))
  #       front = word.split("").slice(n..-1)
  #       word = front << back
  #       pig_latin << word.flatten.join + "ay"
  #     else
  #       back = word.split("").first
  #       front = word.split("").last
  #       word = front << back
  #       pig_latin << word + "ay"
  #     end
  #   end
  #   pig_latin.join(" ")
  # end

end

# t1 = PigLatinizer.new
# t2 = PigLatinizer.new
# binding.pry
# p 'eof'
