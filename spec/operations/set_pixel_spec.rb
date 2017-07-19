require "spec_helper"
require "operations/set_pixel"

describe Operations::SetPixel do
  describe "#perform" do
    it "sets the pixel to the colour" do
      bitmap = [[0, 0, 0], [0, 0, 0]]
      command = described_class.new(bitmap, 1, 2, 6)
      expect(command.perform).to eq [[0, 0, 0], [6, 0, 0]]
    end
  end
end

