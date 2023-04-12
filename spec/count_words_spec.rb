require "count_words"

RSpec.describe "count_words method" do
  context "when given an empty string" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "when given a five word string" do
    it "returns 5" do
      result = count_words("Here's a five word string")
      expect(result).to eq 5
    end
  end
end