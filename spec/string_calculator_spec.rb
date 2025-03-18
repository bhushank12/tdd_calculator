require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "Method add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself if only one number is provided" do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end
end
