def reverse_string(str)
  reversed = ""
  str.chars.each do |char|
    reversed = char + reversed
  end

  reversed
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')

  puts "Expecting: '!dlroW ,olleH'"
  puts "=>", reverse_string("Hello, World!")
end

# Iterate through string, and add each new character to new string
# plus the remainder of the reversed string... This way the reversed string 
# gets the new chars added to the beginning, effectively reversing the order.


# The reversed string starts as an empty string "", and on the first iteration,
# the first char is added. Now the string has one char, the first char in the
# original string. On subsequent iterations, the reversed string is added to
# each new char in original order, thus pushing the first chars to the end and 
# reversing the order of the string.
# EX: "Hello" => "H" + ""; "ello" => "e" + "H"; "llo" => "l" + "eH" ... "olleH"