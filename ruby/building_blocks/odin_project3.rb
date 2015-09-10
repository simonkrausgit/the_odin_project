# Part of the Odin Project Curriculum
#---------------------
#Project3
#--------------------
class OdinProject3

  #def initialize()
  #end

  def substrings(string, dict)

    #Create empty hash to be filled
    return_hash = {}

    #Cycle through every dict entry
    dict.each do |dic|
      if string.include? dic
        return_hash.store(dic,1)
      end
    end
    return_hash
  end
end
