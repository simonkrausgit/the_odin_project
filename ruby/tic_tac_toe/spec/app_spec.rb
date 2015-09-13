require_relative '../app'

describe "Game" do

  #before(:example) do
  #  @game = Game.new
  #end

  it "should be of class Game" do
    @game = Game.new
    expect(@game.class).to eq(Game)
  end
end

describe "Board" do
  it "should be of class Board" do
    @board = Game::Board.new
    expect(@board.class).to eq(Game::Board)
  end
end

describe "Player" do
  it "should be of class Player" do
    @player = Game::Player.new("O")
    expect(@player.class).to eq(Game::Player)
  end
end
