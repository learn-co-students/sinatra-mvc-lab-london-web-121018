class PigLatinizer

  attr_accessor :text, :result


    def consonant?(input)
      !input.match(/[AaEeIiOoUu]/)
    end

    def piglatinize_word(text)
    end_text = text[0]
    new_text = text[1..text.length]
    if !consonant?(end_text)
      result = text + "way"
    elsif consonant?(end_text) && consonant?(new_text[0]) && consonant?(new_text[1])
      result = "ay" + text
    elsif consonant?(end_text) && consonant?(new_text[0])
      result = new_text[1...new_text.length] + end_text + new_text[0] + "ay"
    else
      result = new_text + end_text + "ay"
    end
    result
    end

    def piglatinize_phrase(phrase)
      phrase.split.collect { |word| piglatinize_word(word) }.join(" ")
    end

    def piglatinize(text)
      if text.split(' ').length == 1
         piglatinize_word(text)
      else
        piglatinize_phrase(text)
      end
    end


  
  
  
end