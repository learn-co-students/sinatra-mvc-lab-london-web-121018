require 'pry'
class PigLatinizer

  def output(user_input)
    user_input.split.map { |word| piggy(word)}.join(' ')
  end

  def contains_consonant(word)
   !word.match(/[aAeEiIoOuU]/)
  end

  def no_consonant(word)
    !contains_consonant(word[0])
  end





  def two_consonants(word)
    contains_consonant(word[0]) && contains_consonant(word[1])
  end

  def three_consonants(word)
    contains_consonant(word[0]) && contains_consonant(word[1]) && contains_consonant(word[2])
  end


  def ay(word)
    word = word + "ay"
  end

  def way(word)
    word = word + "way"
  end

  def piggy(word)
    if no_consonant(word)
          way(word)
    elsif three_consonants(word)
      word = word.slice(3..-1) + word.slice(0,3)
      ay(word)
    elsif two_consonants(word)
      word = word.slice(2..-1) + word.slice(0,2)
      ay(word)
    else
      word = word.slice(1..-1) + word.slice(0)
      ay(word)
    end
  end

  def piglatinize(user_input)
    if user_input.split(" ").length == 1
      piggy(user_input)
    else
      output(user_input)
    end
  end

end
