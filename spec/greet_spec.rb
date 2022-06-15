require 'greet'

RSpec.describe "Greet method" do
  it "Takes the name given as an argument and adds it to greeting setence" do
    result = greet("Sara")
    expect(result).to eq "Hello, Sara!"
  end
end