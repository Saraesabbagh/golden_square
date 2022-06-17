class DiaryEntry
  def initialize(title, contents) #title, contents are strings
    @title = title
    @contents = contents
    @place_in_chunk = 0
  end

  def title
    
    return @title
    
  end

  def contents
    #returns the contents as a string
    return @contents
  end
 

  def count_words
    #returns the number of words in the contents as an integer
    return words.length
  end

  def reading_time(wpm) #wpm is an interger representing the number of words the user can read per minute
    #returns and integer representing an estimate of the reading time in minues. 
    #for the contents at the given wpm.
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunks(wpm, minutes) #'wpm' is an integer representing the number of words the user can read per minute
                                  #mintues is an integer represting the number of minutes the user has to read. 
  #returns a string with a chumk of the contents that the user could ready. 
  #in the given number of minutes. 
  #if called again, reading chunk should return the next chunk, skipping. 
  #what has already been read, until the contents is fully read. 
  #the next call after that it shoud start form the begining. 

  readable_words = wpm * minutes
  start_point = @place_in_chunk
  end_point = @place_in_chunk + readable_words

  words_list = words[start_point, end_point]
  
  if end_point >= count_words
    @place_in_chunk = 0
  else 
    @place_in_chunk = end_point
  end
  return words_list.join(" ")

  end
  private
  def words
    return @contents.split(" ")
  end
end 