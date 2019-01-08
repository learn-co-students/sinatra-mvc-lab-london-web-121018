class PigLatinizer

    def piglatinize(text)
        words = text.split(" ")
        sentence = []
        words.collect do |word|
            if word.rindex(/[aeoui]/i, 0) == 0
                sentence << word + "way"   
            elsif word.rindex(/[bcdfghjklmnpqrstvwxyz]/i, 0) == 0
                if word.rindex(/[bcdfghjklmnpqrstvwxyz]/i, 1) == 1
                    if word.rindex(/[bcdfghjklmnpqrstvwxyz]/i, 2) == 2
                        sentence << word[3..-1] + word[0..2] + "ay"
                    else
                        sentence << word[2..-1] + word[0..1] + "ay"
                    end
                else
                    sentence << word[1..-1] + word[0] + "ay"
                end
            end
        end
        sentence.join(" ")
    end

end