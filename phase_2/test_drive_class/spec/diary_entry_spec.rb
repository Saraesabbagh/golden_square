require 'diary_entry'

RSpec.describe DiaryEntry do
  it "outputs title and contents" do
    diary_entry = DiaryEntry.new("My book", "Hello!")
    result = diary_entry.title
    result2 = diary_entry.contents
    expect(result).to eq "My book"
    expect(result2).to eq "Hello!"
  end
  it "outputs total number of words in contents"do
    diary_entry = DiaryEntry.new("test2", "contents2 for tests")
    result = diary_entry.count_words
    expect(result).to eq 3
  end
  it "outputs the estimated reading time in minutes" do
    diary_entry = DiaryEntry.new("test3", "contents3 for tests " * 200) 
    result = diary_entry.reading_time(200)
    expect(result).to eq 3
  end
  it "can readable within given minutes" do
    diary_entry = DiaryEntry.new("test4", "contents4 for tests")
    result = diary_entry.reading_chunks(1, 2)
    expect(result).to eq "contents4 for"
  end
   it "can readable within given minutes" do
    diary_entry = DiaryEntry.new("test5", "contents5 for tests i've got more to check it works")
    diary_entry.reading_chunks(10, 1)
    result = diary_entry.reading_chunks(1, 2)
    expect(result).to eq "contents5 for"
  end


end

