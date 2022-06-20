class GrammarStats
  def initialize
    @passed_tests = 0
    @number_of_tests = 0
  end

  def check?(text) #test is a string
    # returns true os false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.if text == ""
    @number_of_tests += 1 
   
    word_list = text.split(" ")
    first, last = word_list[0][0], word_list[-1][-1]
    
    if (("A".."Z").include?(first) && ["!", "?", "."].include?(last)) 
       @passed_tests += 1
       return true
    else 
      return false
    end
  end

  def percentage_good
    # returns as an integer the percetnatge of text checked so far that passed
    # the  check defined in the 'check' method. the number of 55 represents 55%
    percentage = (@passed_tests.to_f) / (@number_of_tests.to_f) * 100
    return percentage.ceil
  end
end