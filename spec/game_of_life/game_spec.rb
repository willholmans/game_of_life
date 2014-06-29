require "spec_helper"

require "game_of_life/game"

describe GameOfLife::Game do
  it "creates grid of specified size" do
    width, height = 10, 5
    live_cells = []

    grid = GameOfLife::Game.new(width, height, live_cells)

    expect(grid.width).to eq(width)
    expect(grid.height).to eq(height)
  end

  it "creates dead cells by default" do
    width, height = 10, 5
    live_cells = [ { :x => 1, :y => 2 } ]

    grid = GameOfLife::Game.new(width, height, live_cells)

    expect(grid[1, 2]).to be_falsey
  end
end
