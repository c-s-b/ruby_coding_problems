# ruby_coding_problems
collection of coding problems I have solved in ruby

CEASAR'S CIPHER
prompt: Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
problem solving approach (notes/psuedocode):
for each letter in a string, change that letter to the letter x positions forward/backward

input string
input shift number
init alphabet array
convert string to array (string_array)
for each letter in string_array:
  find that letter in alphabet array
  find the letter x positions away in alphabet array
  pass that letter to new array
make any letter that was capital in string array capital in new array
join new array 
output new array


how to loop array:

if the index > 26 index = index - 27

alphabet = a - z

def numberize_shift(shift_input)
  while /\D/ =~ shift_input != nil do
    puts "not a number. try again"
    shift_input = gets.chomp
  end
  return shift_input.to_i
end

def wrap_z_to_a (index)
  index -= 27 if index > 26
end

def encrypt(original_message, alphabet, shift)
  original_message.map do |letter|
   index = wrap_a_to_z( alphabet.index(letter) + shift )
   letter = alphabet.at(index)
  end 
end

def check_for_upcase(original_array, encrypted_array)
  encrypted_array.each_with_index.map do |encrypted_letter, index|
    unless encrypted_letter.casecmp == original_array[index]
	  encrypted_letter.upcase
	end
  end
end

Puts "Please type the message to encrypt:"
array_to_convert = gets.chomp.split("")
Puts "Please type shift value:"
shift = numberize_shift(gets.chomp)

encrypted_array = check_for_upcase( array_to_convert, ecrypt( array_to_convert, alphabet, shift))

puts encrypted_array.join

SUBSTRINGS PROBLEM
prompt:Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
Next, make sure your method can handle multiple words:

problem solving approach(notes/psuedocode)
init dictionary
get word

search disctionary for values the word includes
count value 
return value as key
return count as key: count
return hash (value: count)

string.get
string.split(" ")
string.reduce do |word_in_string|
dictionary.reduce(Hash.new) do |hash, word| #Wrong
if word_in_string.include?(word)
hash[:word] += 1
hash

for each word in string
check each word in dictionary for matches
if match, [:ditionaryword] ++
reutrn has






