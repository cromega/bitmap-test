module Operations
  class NewBitmap
    def initialize(*args)
      @m = args.shift.to_i
      @n = args.shift.to_i
    end

    def perform
      Array.new(@n) { Array.new(@m) { 0 } }
    end
  end
end
