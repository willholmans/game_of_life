module GameOfLife
  class Game
    attr_reader :width, :height

    def initialize(width, height, live_cells)
      @width = width
      @height = height
      @grid = create_grid
    end

    def [](x, y)
      @grid[x][y]
    end

    private
    def create_grid
      Array.new(width) do
        Array.new(height) 
      end
    end
  end
end
