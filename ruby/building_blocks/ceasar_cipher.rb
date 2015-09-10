# Part of the Odin Project Curriculum
#---------------------
#Project1
#---------------------
def ceasar_cipher(string, cipher_key)

  #converting the string into an array of codepoints
  chars = string.unpack('C*')

  #true = postive, false = negative
  cipher_direction = (cipher_key.abs/cipher_key) > 0

  #amount of steps
  cipher_amount = cipher_key.abs

  chars = chars.map do |char|
    unless char.chr[/[\W\d]/] #ignore non-word characters and digits
      if (cipher_direction)
        cipher_amount.times do
          char -= 26 if (char == 122 || char == 90)
          char += 1
        end
      else
        cipher_amount.times do
          char += 26 if (char == 97 || char == 65)
          char -= 1
        end
      end
    end
    char
  end

  #convert array of codepoints back into string
  chars.pack('C*')
end
