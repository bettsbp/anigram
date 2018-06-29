class Words
  def initialize(input_word_1, input_word_2)
    # these are here if i need to access the individual words later on
    @input_word_1 = input_word_1.downcase
    @input_word_2 = input_word_2.downcase
    # this is what im using currently
    @word_array_1 = @input_word_1.split(%r{\s*}).sort
    @word_array_2 = @input_word_2.split(%r{\s*}).sort
    @vowels = ["a", "e", "i", "o", "u", "y"]
  end

  # first method
  def check_if_anagram
    if ((@word_array_1 & @vowels).any? == true && (@word_array_2 & @vowels).any? == true)
      if @word_array_1 == @word_array_2
        print "Anagram found!"
        true
      else
        "These words are antigrams"
      end
    else
      "Please enter real words"
    end
  end
end
