require 'counter'

RSpec.describe Counter do
  it "adds number to count" do
    counter = Counter.new
    result = counter.add(5)
    expect(result).to eq 5
  end
  it "reports output count in a string" do
    counter = Counter.new
    result = counter.report 
    expect(result).to eq "Counted to 0 so far."
  end
end
