require "check_grammar"

RSpec.describe "check_grammar method" do
  context "when given an empty string" do
    it "returns an error message" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end

  context "when given a string that has no capital and no suitable punctuation" do
    it "returns false" do
      result = check_grammar("here is a bad sentence")
      expect(result).to eq false
    end
  end

  context "when given a string with a capital letter but no suitable punctuation" do
    it "returns false" do
      result = check_grammar("Here is almost good")
      expect(result).to eq false
    end
  end

  context "when given a string with no capital letter but suitable punctuation" do
    it "returns false" do
      result = check_grammar("here is almost good.")
      expect(result).to eq false
    end
  end

  context "when given a grammatically correct sentence" do
    it "returns true" do
      result = check_grammar("Here is good!")
      expect(result).to eq true
    end
  end

  context "when given another grammatically correct sentence" do
    it "returns true" do
      result = check_grammar("Is this good?")
      expect(result).to eq true
    end
  end
end