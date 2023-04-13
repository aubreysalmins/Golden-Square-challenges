require "todo_finder"

RSpec.describe "todo_finder method" do
  context "when given an empty string" do
    it "fails" do
      expect { todo_finder("") }.to raise_error "No text given."
    end
  end

  context "when given a string that contains the substring #TODO" do
    it "returns true" do
      result = todo_finder("here is a string that contains #TODO")
      expect(result).to eq true
    end
  end

  context "when given a string that does not contain the substring" do
    it "returns false" do
      result = todo_finder("here is a string that almost contains TODO")
      expect(result).to eq false
    end
  end

  context "when given another string that does not contain the substring" do
    it "returns false" do
      result = todo_finder("another almost string with #TOD")
      expect(result).to eq false
    end
  end
end