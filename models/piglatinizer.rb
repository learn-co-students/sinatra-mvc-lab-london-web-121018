require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(words)
   @words = words
  end

  def piglatinize(words)
   words_array = words.split(" ")

    words_array.collect do |word|
     if word.scan(/\A[^aeiouAEIOU]+/).size != 0
       consonants = word.scan(/\A[^aeiou]+/)
       letters = consonants.first
       size = letters.length

        "#{word[size..-1]}#{letters}ay"
     else
       "#{word}way"
     end
   end.join(" ")
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

# t1 = PigLatinizer.new("Hello Miguel")
# t2 = PigLatinizer.new("At")
# binding.pry
# p 'eof'
