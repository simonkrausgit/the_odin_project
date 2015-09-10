# Part of the Odin Project Curriculum
#---------------------
#Project2
#--------------------

#Pseudo-code for how the method goes through the array
# Array: 0 1 2 3 4
# 0-1 0-2 0-3 0-4
# 1-2 1-3 1-4
# 2-3 2-4
# 3-4
def stock_picker(stocks = [])
  #0: profit, 1: buying day, 2: selling day
  profit = Array.new(3,0)

  #stocks_length is used more often inside the loop, so it's declared here
  #the subtraction is necessary to not include the last element during looping
  stocks_length = stocks.length - 1

  #Outer loop cycling through each element in the array except the last one
  (stocks_length).times do |i|

    #inner loop allowing for comparing the current element ...
    #to all the remaining elements
    (stocks_length - i).times do |j|
      future_day = stocks[j+i+1]
      today = stocks[i]
      if (future_day - today) > profit[0]
        profit = [future_day - today, i, j+i+1]
      end
    end
  end
  profit
end
