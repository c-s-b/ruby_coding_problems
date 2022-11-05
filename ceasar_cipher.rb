

def numberize_shift(shift_input)
    while (/\D/ =~ shift_input) != nil do
      puts "not a number. try again"
      shift_input = gets.chomp
    end
    return shift_input.to_i
  end
  
  def wrap_z_to_a (index)
    index -= 26 if index > 26
    index
  end
  
  def encrypt(original_message, alphabet, shift)
    original_message.map do |letter|
    unless alphabet.index(letter.downcase) == nil
     index = wrap_z_to_a( alphabet.index(letter.downcase) + shift )
     letter = alphabet.at(index)
    else
     letter
    end
    end 
  end
  
  def check_for_upcase(original_array, encrypted_array)
    encrypted_array.each_with_index.map do |encrypted_letter, index|
      if original_array[index].upcase == original_array[index]
        encrypted_letter = encrypted_letter.upcase
      end
        encrypted_letter
    end
  end
  
  alphabet = ("a".."z").to_a

  puts "Please type the message to encrypt:"
  array_to_convert = gets.chomp.split("")

  puts "Please type shift value:"
  shift = numberize_shift(gets.chomp)
  
  encrypted_array = check_for_upcase( array_to_convert, encrypt( array_to_convert, alphabet, shift))
  
  puts encrypted_array.join