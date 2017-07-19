require "operations/new_bitmap"
require "operations/clear_bitmap"
require "operations/set_pixel"

class BitmapThing
  def initialize(commands)
    @commands = commands.split("\n")
  end

  def run
    bitmap = []
    @commands.each do |cmd|
      parts = cmd.split
      case parts.first
      when "N"
        p parts
        bitmap = Operations::NewBitmap.new(*parts[1..-1]).perform
      when "C"
        bitmap = Operations::ClearBitmap.new(bitmap, *parts[1..-1]).perform
      when "P"
        bitmap = Operations::SetPixel.new(bitmap, *parts[1..-1]).perform
      end

    end
    bitmap

  end

end
