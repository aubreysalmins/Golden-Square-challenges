require "calculate_reading_time"

RSpec.describe "calculate_reading_time method" do
  context "given an empty string" do
    it "returns 0" do
      result = calculate_reading_time("")
      expect(result).to eq 0
    end
  end

  context "given a string under two hundred words long" do
    it "returns 1" do
      result = calculate_reading_time("one")
      expect(result).to eq 1
    end
  end

  context "given a string of two hundred words" do
    it "returns 1" do
      result = calculate_reading_time("one " * 200)
      expect(result).to eq 1
    end
  end

  context "given a string of four hundred words" do
    it "returns 2" do
      result = calculate_reading_time("one " * 400)
      expect(result).to eq 2
    end
  end

  context "given a string of two thousand five hundred words" do
    it "returns 13" do
      result = calculate_reading_time("one " * 2500)
      expect(result).to eq 13
    end
  end
end