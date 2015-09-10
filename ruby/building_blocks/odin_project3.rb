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

    #downcase the string as we want to detect case insensitive
    string_array = string.downcase.scan(/\w+/)
    #Cycle through every dict entry
    dict.each do |dic|
      string_array.each do |s|
        if s.include? dic
          if return_hash.has_key?(dic)
            return_hash[dic] += 1
          else
            return_hash.store(dic,1)
          end
        end
      end
    end
    return_hash
  end
end
