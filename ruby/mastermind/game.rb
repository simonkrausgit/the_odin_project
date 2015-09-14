class Game

  def game_loop
    num_loops = 0
    until num_loops == 12
      num_loops += 1
      puts "Choose your numbers (e.g: 1432)"
    end
    num_loops
  end

  require_relative "board.rb"
end
