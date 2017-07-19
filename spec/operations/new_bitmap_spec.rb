require "spec_helper"
require "operations/new_bitmap"

describe Operations::NewBitmap do
  describe "#perform" do
    it "returns a new bitmap" do
      command = described_class.new(3, 2)
      expect(command.perform).to eq [[0,0,0], [0,0,0]]
    end
  end
end
