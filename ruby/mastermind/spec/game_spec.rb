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
      combination = @game.generate_random_combination
      expect(combination[0]).to be_within(1.5).of(2.5)
      expect(combination[1]).to be_within(1.5).of(2.5)
      expect(combination[2]).to be_within(1.5).of(2.5)
      expect(combination[3]).to be_within(1.5).of(2.5)
    end
  end




end
