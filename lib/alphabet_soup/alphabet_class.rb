require 'alphabet_soup'


class Alphabetize

  #set the alphabet as a string using this accessor
  #Ex. x = Alphabetize.new
  #x.alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  attr_accessor :alphabet


#takes an array of strings as an argument and orders them alphabetically based
#on the alphabet set using the alphabet accessor
 def alphabetize(arr)
    arr.sort_by do |word| 
      word.split("").collect do |letter| 
        split_alphabet = alphabet.split("")
        if split_alphabet.include?(letter)
          split_alphabet.index(letter)
        else
          split_alphabet.count
        end
      end
    end
  end

end




=begin
Example: 
x = Alphabetize.new
x.alphabet = "sabjdexld"
array_of_words = ["words", "sabre", "jaded", "apple"]


x.alphabetize(array_of_words)

 => ["sabre", "apple", "jaded", "words"] 

=end
