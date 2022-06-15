require 'string_builder'

RSpec.describe StringBuilder do
  it "takes a new string and adds it to the @string" do
    string = StringBuilder.new
    result = string.add("Sara")
    expect(result).to eq "Sara"
  end

  it "calculates the length of the string"
    string = StringBuilder.new
    string.add("Karolina")
    result = string.size
    expect(result).to eq 8
  end

  it "takes the string and prints it to screen"
    string = StringBuilder.new
    string.add("hello")
    result = string.output
    expect(result).to eq "hello"
  end
end

