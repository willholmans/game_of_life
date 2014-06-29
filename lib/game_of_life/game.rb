module GameOfLife
  class Game
    attr_reader :width, :height

    def initialize(width, height, live_cells)
      @width = width
      @height = height
      @live_cells = live_cells
      @grid = create_grid
    end

    def [](x, y)
      @grid[x][y]
    end

    private

    attr_reader :live_cells

    def create_grid
      Array.new(width) do |x|
        Array.new(height) do |y|
          live_cells.include? [x, y]
        end
      end
    end
  end
end
