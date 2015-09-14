#
# Tic Tac Toe implementatino as part of the Odin Project
#
class Game

  def initialize
    @board = Board.new
    @player1 = Player.new("1")
    @player2 = Player.new("2")
  end

  def play_game
    start_new_game
    #cycling through game
    num_cycles = cycle

    system("clear")
    display_board
    if num_cycles == 9
      puts "No winner. Press any key to exit"
      $stdin.gets.chomp
    else
      if num_cycles%2 == 0
        puts "Congratulations, Player with symbol #{@player2.mark} won the game. Press any key to exit"
        @player2.winner_status = true
        $stdin.gets.chomp
      else
        puts "Congratulations, Player with symbol #{@player1.mark} won the game. Press any key to exit"
        @player1.winner_status = true
        $stdin.gets.chomp
      end
    end
  end

  def print_winner_symbol
    if @player1.winner_status == true
      puts @player1.mark
      return true
    elsif @player2.winner_status == true
      puts @player2.mark
      return true
    else
      return false
    end
  end

  def cycle
    end_of_game = false
    counter = 0
    until end_of_game
      if counter%2 == 0
        take_turn(@player1)
      else
        take_turn(@player2)
      end
      counter += 1
      if counter == 9 || @board.winner?
        end_of_game = true
      end
    end
    counter
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
    @player1.set_symbol
    @player2.set_symbol
  end

  def take_turn(player)
    accepted_move = false
    first_try = true
    until (accepted_move)
      system("clear")
      display_board
      puts("Sorry, your input is not supported.") unless first_try
      array = player.make_move
      unless array == false
        if @board.is_free?(array)
          @board.field[array[0]][array[1]] = player.mark
          accepted_move = true
        end
      end
      first_try = false
    end
    array
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

    def is_free?(array)
      return true if @field[array[0]][array[1]] == nil
      false
    end

    def winner?
      columns_winner? || vertical_winner? || rows_winner?
    end

    def rows_winner?
      check_array(@field)
    end

    def columns_winner?
      check_array(@field.transpose)
    end

    def vertical_winner?

      if @field[1][1] == nil
        return false
      else
        middle_mark = @field[1][1]
        if ( @field[0][0] == middle_mark &&
             @field[2][2] == middle_mark) ||
           ( @field[2][0] == middle_mark &&
             @field[0][2] == middle_mark)
          return true
        end
      end
      false
    end

    def check_array(array)
      array.each do |row|
        first_item = row[0]
        return true if ( row.all?{|item| item == first_item} && first_item != nil )
      end
      false
    end
  end

  class Player

    attr_accessor :mark, :winner_status

    def initialize(mark)
      @mark = mark
      @winner_status = false
    end

    def set_symbol
      accepted_symbol = false
      first_try = true
      #puts("Player#{player_mark}, choose your symbol (it needs to be a single character):")
      until (accepted_symbol)
        system("clear")
        puts("Sorry, your input is not supported.") unless first_try
        puts("Player #{@mark}, choose your symbol (it needs to be a single character):")
        symbol = $stdin.gets.chomp
        if symbol =~ /^[a-zA-Z]$/
          accepted_symbol = true
        end
        first_try = false
      end
      @mark = symbol
    end

    def make_move()
      puts "\n Player with symbol #{@mark}, make your move (in this format: [x,y] like so: 1,2):"
      input = $stdin.gets.chomp
      if input =~ /\d,\d/
        return input.split(',').map {|i| i.to_i - 1}
      end
      false
    end

  end
end
