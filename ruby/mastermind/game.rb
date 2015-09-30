class Game

  require_relative "board.rb"

  def game_loop
    num_loops = 0
    until num_loops == 12
      num_loops += 1
      puts "Choose your numbers (e.g: 1432)"
    end
    num_loops
  end

  def generate_random_combination
    [rand(4)+1,rand(4)+1,rand(4)+1,rand(4)+1]
  end

end
