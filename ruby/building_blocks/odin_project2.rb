# Part of the Odin Project Curriculum

class OdinProject2
  #---------------------
  #Project2
  #--------------------
  def initialize()

    #0: profit, 1: buying day, 2: selling day
   @profit = Array.new(3,0)
  end

  def stock_picker(stocks = [])
#Pseudo-code:
# Array: 0 1 2 3 4
# 0-1 0-2 0-3 0-4
# 1-2 1-3 1-4
# 2-3 2-4
# 3-4

    stocks_length = stocks.length - 1

    (stocks_length).times do |i|
      (stocks_length - i).times do |j|

        future_day = stocks[j+i+1]
        today = stocks[i]
        if (future_day - today) > @profit[0]
          @profit = [future_day - today, i, j+i+1]
        end

      end
    end

    @profit
  end

end
