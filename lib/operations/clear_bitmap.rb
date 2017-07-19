module Operations
  class ClearBitmap

    def initialize(bitmap)
      @bitmap = bitmap
    end

    def perform
      @bitmap.size.times do |c|
        column = @bitmap[c]
        column.size.times do |r|
          @bitmap[c][r] = 0
        end
      end

      @bitmap
    end
  end
end

