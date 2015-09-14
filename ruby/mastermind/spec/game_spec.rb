require_relative "../mastermind"

describe "Game" do
  before(:example) do
    @game = Game.new
  end
  it "should be of class Game" do
    expect(@game.class).to eq(Game)
  end

  describe "#game_loop" do
    it "should end the game after 12 rounds" do
      expect(@game.game_loop).to eq(12)
    end
    it "should output to the user" do
      expect{@game.game_loop}.to output(include("Choose your numbers")).to_stdout
    end
  end


end
