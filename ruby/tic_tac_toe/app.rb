#
# Tic Tac Toe implementatino as part of the Odin Project
#
class Game

  def initialize
    @board = Board.new
    @player1 = Player.new("1")
    @player2 = Player.new("2")
  end

  def display_player_marks
    puts "Player1: #{@player1.mark} Player2: #{@player2.mark}"
  end

  def display_board
    puts @board.return_display_string
  end

  def populate_board (array)
    @board.field = array
  end
  def start_new_game
    populate_board([[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]])
    @player1.mark = find_symbol(@player1.mark)
    @player2.mark = find_symbol(@player2.mark)
  end
  def find_symbol(player_mark)
    #accepted_symbol = false
    #first_try = true
    puts("Player#{player_mark}, choose your symbol (it needs to be a single character):")
    $stdin.gets.chomp
    #until (accepted_symbol)
    #  system("clear")
    #  puts("Sorry, your input is not supported.") if first_try
    #  puts("Player#{player_mark}, choose your symbol (it needs to be a single character):")
    #  symbol = gets.chomp
    # =~ /\w/
    #  first_try = false
    #end
  end
  def cycle_through

  end

  class Board

    attr_accessor :field

    def initialize
      @field =[[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
    end

    def return_display_string
      string = "\n  -------"
      @field.each do |row|
        string += "\n  |"
        row.each do |item|
          if item != nil
            string += "#{item}|"
          else
            string += ' |'
          end
        end
      end
      string +="\n  -------"
    end
  end

  class Player

    attr_accessor :mark

    def initialize(mark)
      @mark = mark
    end

    def take_turn()

    end
  end
end

=begin

  def game_cycle(player_mark)

    end_game = false
    until end_game

      display
      if player_mark == "O"
        player_mark = "X"
      else
        player_mark = "O"
      end

      legitimate_input = false
      until legitimate_input
        puts "\n Player with symbol #{player_mark}, make your move (in this format: [x,y]):"
        input = gets.chomp
        input = input.split(',')
        if (input[0].to_i.class == Fixnum && input[1].to_i.class == Fixnum)
          legitimate_input = @board.place_mark(input[0].to_i,input[1].to_i,player_mark)
        end
        unless legitimate_input
          system("clear")
          display
          puts "\n Invalid Input. Try again:"
        end
      end

      #Check if winner
      if @board.has_winner?
        system("clear")
        display
        puts "\n End of game. Player #{player_mark} won the game!!! Press any key to exit"
        input = gets.chomp
        end_game = true
      end
      #Check if board full
      if @board.is_full?
        system("clear")
        display
        puts "\n End of game. No winner. Press any key to exit"
        input = gets.chomp
        end_game = true
      end
    end
  end

  class Board

    def initialize
      @field =[["X","O",nil],["X",nil,"O"],[nil,"X",nil]]
    end

    def has_winner?

      columns_winner? || vertical_winner? || rows_winner?
    end

    def rows_winner?
      check_array(@field)
    end

    def columns_winner?
      check_array(@field.transpose)
    end

    def vertical_winner?
      winner = false
      if @field[1][1] == nil
        middle_mark = "N"
      else
        middle_mark = @field[1][1]
      end
      winner = ( @field[0][0] == middle_mark &&
                       @field[2][2] == middle_mark )
      winner = ( @field[2][0] == middle_mark &&
                       @field[0][2] == middle_mark )
      winner
    end

    def check_array(array)
      array.each do |row|
        first_item = row[0]
        return ( row.all?{|item| item=first_item} )
      end
    end

    def is_full?
      count == 9
    end

    def count
      num_elements = 0
      @field.count do |row|
        num_elements += row.count{|item| item != nil}
      end
      num_elements
    end

    def place_mark(x,y,player_mark)
      if @field[y - 1][x - 1] == nil
        @field[y - 1][x - 1] = player_mark
        return true
      else
        return false
      end
    end

    def display
      system("clear")
      puts "  -------"
      @field.each do |row|
        string = "  |"
        row.each do |item|
          if item != nil
            string += "#{item}|"
          else
            string += ' |'
          end
        end
        puts string
      end
      puts "  -------"
    end

  end
end
=end
