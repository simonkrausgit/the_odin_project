class Board

  def initialize
    #The first four entries represent the placed blocks, the fifth how many
    #correct colors were chosen and the sixth how many were correcly placed
    #The first row represents the solution
    @field = [[nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil]]
  end
end
