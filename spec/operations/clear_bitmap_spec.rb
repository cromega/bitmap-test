require "spec_helper"
require "operations/clear_bitmap"

describe Operations::ClearBitmap do
  describe "#perform" do
    it "sets all the pixels of the bitmap to 0" do
      bitmap = [[1,1], [1,1]]
      command = described_class.new(bitmap)
      expect(command.perform).to eq [[0,0], [0,0]]
    end
  end
end


