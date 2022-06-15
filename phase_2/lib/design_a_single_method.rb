#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

# reading_time_estimate = reading_time_estimator(text)
#
# * reading_time_estimate is a numeric value which denotes the number of minutes it takes to read text 
# where the reader takes 1 min to read 200 words
# * text is a string consisting of words 

def reading_time_estimator(text)
  no_words = text.split(" ").length.to_f 
  no_words/200
end

#grammar_check = grammar_checker(text)

#checks whether text is grammatically sound or not. if grammar is correct return true if there are errors return false. 
#text is a string of words. 

# def grammar_checker(text)
#   word_list = text.split(" ")
#   first, last = word_list[0][0], word_list[-1][-1]
#   is_first_capital = ("A".."Z").include?(first)
#   is_correct_punctutation = ["!", "?", "."].include?(last)
#   if is_first_capital && is_correct_punctutation
#     return true 
#     puts "Well done!"
#   else
#     puts "booooo!"
#     return false
#   end
# end

def grammar_checker(text)
  word_list = text.split(" ")
  first, last = word_list[0][0], word_list[-1][-1]
  (("A".."Z").include?(first) && ["!", "?", "."].include?(last)) ? true : false
end

# Describe the Problem
# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

# Design the Method Signature
# includes_todo = todo_checker(text)
# text will be a string of words
# includes_todo will return true or false depending on whether the text contains #TODO or not.

def todo_checker(text)
  if text.match("#TODO")
    return true
  else 
    return false
  end 
end

