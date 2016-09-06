# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#"string".swapcase returns an copy of the string with the character case converted. 
puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

#"string".insert() other_str before the charter at the given index, modifying str.
puts "zom".insert(1,'o')
# => “zoom”

#"string".center() centers a string width 
puts "enhance".center(20)
# => "    enhance    "

#"string".upcase replaces all lowercase alphabet charters with uppercase.
puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(-1," suspects")
#=> "the usual suspects"

puts " suspects".insert(0,"the usual")
# => "the usual suspects"

#"string".chomp() returns a new string with the given selector removed from the end of the string.
puts "The case of the disappearing last letter".chomp('r')
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".chomp!
# => "he mystery of the missing first letter"

#"sting".squeeze()Returns a new string where runs of the same character that 
# occur in this set are replaced by a single character. If no arguments are given, 
# all runs of identical characters are replaced by a single character.
puts "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

puts "z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts"How many times does the letter 'a' appear in this string?".count "a"
# => 4




