require "spec_helper"

describe "integration" do
  it "creates a grid with configured cells", :int => true do
    width, height = 10, 5
    live_cells = [ [0, 1], [2, 2], [3, 0] ]

    game = GameOfLife.new(width, height, live_cells)
    grid = game.grid

    expect(grid[0, 1]).to be_truthy
    expect(grid[2, 2]).to be_truthy
    expect(grid[3, 0]).to be_truthy

    expect(grid[3, 1]).to be_nil
  end
end
