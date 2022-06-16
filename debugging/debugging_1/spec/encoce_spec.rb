require 'encode'

RSpec.describe "encode method" do
  it "Takes a string of letters and turns them into a secret uppercase key."
    result = encode("theswiftfoxjumpedoverthelazydog","secretkey")
    expect(result).to eq  "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
end

RSpec.describe "decode method" do
  it "Takes a ciphertext and uses the key to return it to normal text"
    result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
    expect(result).to eq "theswiftfoxjumpedoverthelazydog"
  end
end
