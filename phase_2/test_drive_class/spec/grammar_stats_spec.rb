require 'grammar_stats'

RSpec.describe GrammarStats do
  context "check method" do
    it "retruns true if text starts with a captial and ends with a punctuation mark" do
     grammar_stats = GrammarStats.new
     result = grammar_stats.check?("Hello, i'm here to test grammar!")
     expect(result).to eq true
    end 
    it "returns false if text does not start with a capital letter and end with a correct punctuation mark" do
     grammar_stats = GrammarStats.new
      result= grammar_stats.check?("oh dear this isn't right")
      expect(result).to eq false
    end

  end

  context "percentage method" do
    it "tests 1 test for 100%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check?("Hello, I'm your test.")
      result = grammar_stats.percentage_good
      expect(result).to eq 100
    end

    it "tests 2 for 50%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check?("Test Sentence.")
      grammar_stats.check?("Test Sentence")
      result = grammar_stats.percentage_good
      expect(result).to eq 50
    end
  end
end



