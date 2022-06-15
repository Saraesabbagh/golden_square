require 'design_a_single_method'

test_data = Array((1..400))
test_data_0 = ' ' # String/text
test_data_1 = test_data[0...200].join(' ') # String/text
test_data_2 = test_data[0...300].join(' ') # String/text

RSpec.describe "reading_time_estimator method" do 
  it "test[0] returns 0 when a string of 0 words is passed to the method" do
    expect(reading_time_estimator(test_data_0)).to eq 0
  end

  it "test[1] returns 1 when a string of 200 words is passed to the method" do
    expect(reading_time_estimator(test_data_1)).to eq 1
  end 

  it "test[2] returns 1.5 when a string of 300 words is passed to the method" do
    expect(reading_time_estimator(test_data_2)).to eq 1.5
  end 
end

