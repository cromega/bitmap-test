module Operations
  class SetPixel

    def initialize(bitmap, *args)
      @bitmap = bitmap
      @m = args.shift.to_i
      @n = args.shift.to_i
      @c = args.shift.to_i
    end

    def perform
      @bitmap[@n - 1][@m - 1] = @c
      @bitmap
    end
  end
end

