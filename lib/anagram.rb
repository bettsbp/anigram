class Words
  def initialize(input_word_1, input_word_2)
    # these are here if i need to access the individual words later on
    @input_word_1 = input_word_1.downcase
    @input_word_2 = input_word_2.downcase
    # this is what im using currently
    @word_array_1 = @input_word_1.split("")
    @word_array_2 = @input_word_2.split("")
  end

  # first method
  def check_if_anagram
    downcase_array_1 = @word_array_1.sort
    downcase_array_2 = @word_array_2.sort
    puts downcase_array_1
    if downcase_array_1 == downcase_array_2
      true
    else
      false
    end
  end

  def check_for_vowels
    if @word_array_1.to_s.include?("a,e,i,o,u")
      words_to_test.check_if_anagram
    else
      "Please enter a real word!"
    end
  end
end
