#
# Tic Tac Toe implementatino as part of the Odin Project
#
class Game

  initialize do
    @player1 = Player.new
    @player2 = Player.new
    @board = Board.new
  end

  class Player
    initialize do

    end
  end
  class Board

    initialize do
      @fields =[["X","O",nil],["X",nil,"O"],[nil,"X",nil]]
    end

    display do
      @fields.each do |row|
        puts "-------"
        row.each do |item|
          string = "|"
          if item != nil
            string += ' |'
          else
            string += "#{item}|"
          end
          puts string
        end
        puts "-------"
      end
    end

  end
end

game = Game.new
