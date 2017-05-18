def caesar_cipher uncoded_string, shift_right

  # Check if the string is valid
  if uncoded_string.length <= 0
    puts "Please enter a string"
    return nil
  else
    # Variable to push the encoded string in
    encoded_string = ""
    # Array with all chars
    alphabet_chars = ("a".."z").to_a
    # Begin encoding
    uncoded_string.each_char do |char|
      # if char is downcase
      if char =~ /[a-z]/
        puts "\n------ Start new Char a-z ------"
        # char is filled with the encoded string
        # the new char is taken out of the array alphabet_chars
        # new_index calculates the position in the alphabet
        char = alphabet_chars[new_index(alphabet_chars, char, shift_right)]

        puts "Encoded Char a-z: " + char
      elsif char =~ /[A-Z]/
        puts "\n------ Start new Char A-Z ------"
        char = alphabet_chars[new_index(alphabet_chars, char, shift_right)].upcase
        puts "Encoded Char A-Z: " + char
      end
      encoded_string << char
    end

  end

  puts "\n'#{uncoded_string}' was encoded to '#{encoded_string}'"

end

def new_index char_list, char, shift
  puts "Char: " + char + " Shift: " + shift.to_s
  index = char_list.index(char.downcase)+shift
  puts "New index: " + index.to_s
  index = -1*(char_list.length - index) if index > char_list.length

  return index

end

caesar_cipher("What A string!", 5)
