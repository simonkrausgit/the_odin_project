require_relative '../app'

describe "Game" do

  before(:example) do
    @game = Game.new
  end

  it "should be of class Game" do
    expect(@game.class).to eq(Game)
  end

  describe "#display_player_marks" do
    it "should properly print the player markers" do
      expect{@game.display_player_marks}.to output("Player1: 1 Player2: 2\n").to_stdout
    end
  end
  describe "#display_board" do
    it "should print the correct field data in the console" do
      expect{@game.display_board}.to output("\n  -------\n  | | | |\n  | | | |\n  | | | |\n  -------\n").to_stdout
      @game.populate_board([["X","O",nil],["X",nil,"O"],[nil,"X",nil]])
      expect{@game.display_board}.to output("\n  -------\n  |X|O| |\n  |X| |O|\n  | |X| |\n  -------\n").to_stdout
    end
  end

  describe "#start_new_game" do
    it "should return the correct symbols that were typed in" do
      #allow(@game.start_new_game).to receive(:get).and_return("a\n", "D\n")
      allow(STDIN).to receive(:gets).and_return("a\n", "D\n")
      @game.start_new_game
      expect{@game.display_player_marks}.to output("Player1: a Player2: D\n").to_stdout
    end
  end

end

describe "Board" do

  before(:example) do
    @board = Game::Board.new
  end

  it "should be of class Board" do
    expect(@board.class).to eq(Game::Board)
  end

  describe "#field" do
    it "should fill up the field variable correctly" do
      @board.field = ([["X" , "O" , nil],["O", nil , nil],["X", nil , "O"]])
      expect(@board.field).to eq([["X" , "O" , nil],["O", nil , nil],["X", nil , "O"]])
    end
  end
  describe "#return_display_string" do
    it "should return the correct string with all empty fields" do
      expect(@board.return_display_string).to eq("\n  -------\n  | | | |\n  | | | |\n  | | | |\n  -------")
    end
    it "should return the correct string using a filled board" do
      @board.field = ([["X","O",nil],["X",nil,"O"],[nil,"X",nil]])
      expect(@board.return_display_string).to eq("\n  -------\n  |X|O| |\n  |X| |O|\n  | |X| |\n  -------")
    end
  end

end

describe "Player" do

  before(:example) do
    @player = Game::Player.new("0")
  end

  it "should be of class Player" do
    expect(@player.class).to eq(Game::Player)
  end

  describe "#setting_and_reading" do
    it "should correctly set and return the Player's mark" do
      @player.mark = "X"
      expect(@player.mark).to eq("X")
    end
  end
  describe "#set_symbol" do

    it "should return the symbol that was typed in" do
      allow(STDIN).to receive(:gets).and_return("a\n", "D\n")
      expect(@player.set_symbol). to eq("a")
      expect(@player.set_symbol). to eq("D")
    end

    it "should cycle if symbol is longer than 1 letter" do
      allow(STDIN).to receive(:gets).and_return("aoe\n", "a\n")
      expect{@player.set_symbol}. to output(
          "Player0, choose your symbol (it needs to be a single character):\n" +
          "Sorry, your input is not supported.\n" +
          "Player0, choose your symbol (it needs to be a single character):\n").to_stdout
      allow(STDIN).to receive(:gets).and_return("aoe\n","snch2nthaoeu\n", "X\n")
      expect(@player.set_symbol).to eq("X")
    end
    it "should cycle if symbol is not a letter" do
      allow(STDIN).to receive(:gets).and_return("8\n", "a\n")
      expect{@player.set_symbol}. to output(
          "Player0, choose your symbol (it needs to be a single character):\n" +
          "Sorry, your input is not supported.\n" +
          "Player0, choose your symbol (it needs to be a single character):\n").to_stdout
      allow(STDIN).to receive(:gets).and_return("2\n","%\n","~\n","!\n", "O\n")
      expect(@player.set_symbol).to eq("O")
    end
  end
end
