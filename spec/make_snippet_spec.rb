require "make_snippet"

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given a string of four words" do
    it "returns the string" do
      result = make_snippet("this four word string")
      expect(result).to eq "this four word string"
    end
  end

  context "given a string of six words" do
    it "returns the first five words and replaces the last word with '...'" do
      result = make_snippet("here is a six word string")
      expect(result).to eq "here is a six word..."
    end
  end
end