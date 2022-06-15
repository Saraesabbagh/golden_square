require 'add_five'

RSpec.describe "add_five method" do
  it "Takes the number and adds 5 to it" do
    result = add_five(3)
    expect(result).to eq 8
  end
end