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


RSpec.describe "grammar_checker method" do
  it "returns true when 'Lorem ipsum dolor sit amet consectetur adipisicing elit.' is passed to the method " do
    expect(grammar_checker("Lorem ipsum dolor sit amet consectetur adipisicing elit.")).to eq true
  end
  
  it "returns true when 'Lorem ipsum dolor sit amet consectetur adipisicing elit. ' is passed to the method " do
    expect(grammar_checker("Lorem ipsum dolor sit amet consectetur adipisicing elit. ")).to eq true
  end


  it "returns false when 'lorem ipsum dolor sit amet consectetur adipisicing elit' is passed to the method" do
    expect(grammar_checker("lorem ipsum dolor sit amet consectetur adipisicing elit")).to eq false
  end

end 

# Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
# molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
# numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
# optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
# obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
# nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
# tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
# quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
# sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
# recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
# minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
# quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
# fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
# consequuntur! Commodi minima excepturi repudiandae velit hic maxime
# doloremque. Quaerat provident commodi consectetur veniam similique ad 
# earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
# fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
# suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
# modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
# totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
# quasi aliquam eligendi, placeat qui corporis!