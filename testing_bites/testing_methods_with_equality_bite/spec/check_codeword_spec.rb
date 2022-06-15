require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "when starts with h and ends with e they get close and if not they get wrong" do
    result = check_codeword("here")
    expect(result).to eq "Close, but nope."
  end
  it "takes an arugment that is Horse and says Correct come it" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "it take and argument that is not horse and does not have an h or e at start or end" do
    result = check_codeword("dublin")
    expect(result).to eq "WRONG!"
  end
end
