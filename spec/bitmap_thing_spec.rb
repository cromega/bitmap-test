require "spec_helper"
require "bitmap_thing"

describe BitmapThing do
  describe "#run" do
    it "returns the bitmap defined by the inputs" do
      thing = BitmapThing.new("N 3 3\nC\nP 1 2 5")
      expect(thing.run).to eq [[0, 0, 0], [5, 0, 0], [0, 0, 0]]
    end
  end
end
