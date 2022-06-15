require 'report_length'

RSpec.describe "report_length method" do
  it "takes a string, counts the characters it has and then tells you how many they have" do
    result = report_length("Sara")
    expect(result).to eq "This string was 4 characters long."
  end
end