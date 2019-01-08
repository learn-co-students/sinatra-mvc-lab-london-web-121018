class PigLatinizer
  attr_accessor :string

  def initialize

  end





  def piglatinize(word)
    word.split(' ').map do |word|
        if word[0].match(/[aeoui]/i)
          word + 'way'
      else
        prefix = word[0, %w(a e i o u).map{|vowel|
          "#{word}aeiou".index(vowel)}.min]
        "#{word[prefix.length..-1]}#{prefix}ay"
      end
    end.join(' ')
  end

end






# newA = string.split(" ").map do |x|
# if x[0].match(/[bcdfghjklmnpqrstvwxyz]/) && x[1].match(/[bcdfghjklmnpqrstvwxyz]/)
#     x[2..x.length] + x[0] + x[1] + 'ay'
# elsif x[0].match(/[aeoui]/i)
#     x + 'way'
# else
#     x[1..x.length] + x[0] + 'ay'
# end
# end
# @new_string = newA.join(' ')
#
# end
