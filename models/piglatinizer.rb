require 'pry'

class PigLatinizer

  def piglatinize(text)
    if text.split(" ").length == 1
    piglatinizer(text)
    else
    piglatin_sentence(text)
    end
  end

  def consonant?(letter)
   !letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinizer(word)
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

  def piglatin_sentence(sentence)
    sentence.split.collect { |word| piglatinizer(word) }.join(" ")
  end

end
