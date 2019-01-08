class PigLatinizer

    attr_reader :text

    def initialize(text)
        @text = text
    end

    def animorph
        t_array = @text.split(" ")
        pig_sentence = []
        t_array.collect do |word|
            # checks vowel sounds
            
            if word.rindex(/[aeiouAEIOU]/, 0) == 0
                pig_sentence << word + "way"
            elsif word.rindex(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/, 0) == 0
                if word.rindex(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/, 1) == 1
                    if word.rindex(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/, 2) == 2
                        pig_sentence << word[3..-1] + word[0..2] +"ay"
                
                    else
                    pig_sentence << word[2..-1] + word[0..1] +"ay"
                    end
                else
                pig_sentence << word[1..-1] + word[0] +"ay"
                end
            
            end
        end
    pig_sentence.join(" ")
    end
end

#he was an old man who fished alone in a 
#skiff in the gulf stream and he had gone eighty four days now