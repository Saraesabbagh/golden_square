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