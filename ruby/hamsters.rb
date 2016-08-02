puts "What is your hamster's name?"
name = gets.chomp 
puts "From 1 to 10 how loud is your hamster?"
loud = gets.to_i
puts "Fur color?"
color = gets.chomp
puts "Is your hamster a good candidate for adoption?(t/f)"
adoption = gets.chomp
	if adoption == "t"
		then adoption = "is a good candidate for adoption"
	else
		adoption = false
		puts "Why are you bringing him to an adoption center? D:"
	end
puts "How old is your hamster?"
age = gets.to_i
	if age == " "
	 then age = nil
	 puts "You're such a bad owner. -___-"
	end
puts "#{name} is #{loud} lvl loud, #{color}, #{adoption}, and #{age} year/s old."

