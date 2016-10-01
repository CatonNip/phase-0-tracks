#PSUDOCODE#
#Goal for this program is to create something that logs when you logged onto social media 
#so you can see if anyone else is accessing your account.

#REQUIRE things you will need to set up the database
#Create the DATABASE TABLE I'll use to track the user's info

require "sqlite3"

db = SQLite3::Database.new('security_project.db')
db.results_as_hash = true

user_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id 	INTEGER PRIMARY KEY,
		first_name 	VARCHAR(255),
		last_name VARCHAR(255),
		age INT,
		location VARCHAR(255),
		social_media VARCHAR(255),
		time VARCHAR(255),
		date VARCHAR(255)
	)
SQL
#CREATES a new table
db.execute(user_table_cmd)

#Create a METHOD to STORE information into a database
def create_user (db, first_name, last_name, age, location, social_media,time,date)
	db.execute("INSERT INTO users (first_name, last_name, age, location, social_media, time, date) values (?,?,?,?,?,?,?)",[first_name,last_name,age,location,social_media,time,date])
end

print "Security Checker 5000 booting up."
loop do
	puts " Please enter your first name."
		first_name = gets.chomp.to_s
	puts "What's your last name?"
		last_name = gets.chomp.to_s
	puts "What's your age?"
		age = gets.chomp.to_i
	puts "What is your current location?"
		location = gets.chomp.to_s
	puts "What social media platform do you want to test for?"
		social_media = gets.chomp.to_s
	puts "What is the current time?"
		time = gets.chomp.to_s
	puts "What is the current date?"
		date = gets.chomp.to_s

	create_user(db, first_name, last_name, age, location, social_media,time,date)
	print "Alright I have stored your data. Would you like to create another user? If not please type 'quit'"
	continue = gets.chomp.to_s.downcase
	break if continue = quit
end
	
