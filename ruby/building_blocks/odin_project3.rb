# Part of the Odin Project Curriculum
#---------------------
#Project3
#--------------------
class OdinProject3

  def substrings(string, dict)
    #Create empty hash to be filled
    storage = {}

    #downcase the string as we want to detect case insensitive
    string.downcase!

    #Cycle through every dict entry
    dict.each do |dic|
      count = string.scan(dic).length
      storage[dic] = count if count > 0
    end
    storage
  end
end
