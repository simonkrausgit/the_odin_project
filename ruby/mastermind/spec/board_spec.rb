require_relative "../mastermind"

describe "Game" do
  before(:example) do
    @board = Game::Board.new
  end
  it "should be of class Board" do
    expect(@board.class).to eq(Game::Board)
  end
end
