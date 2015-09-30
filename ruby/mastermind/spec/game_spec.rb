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

  describe "#generate_random_combination" do
    it "should return an Array with 4 entries" do
      expect(@game.generate_random_combination.length).to eq (4)
    end
    it "should return 4 numbers contained in the array" do
      expect(@game.generate_random_combination[0].class).to eq(Fixnum)
      expect(@game.generate_random_combination[1].class).to eq(Fixnum)
      expect(@game.generate_random_combination[2].class).to eq(Fixnum)
      expect(@game.generate_random_combination[3].class).to eq(Fixnum)
    end
  end




end
