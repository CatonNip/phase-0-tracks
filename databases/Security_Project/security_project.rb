#PSUDOCODE#
#Goal for this program is to create something that logs when you logged onto social media 
#so you can see if anyone else is accessing your account.

#REQUIRE things you will need to set up the database
#Create the DATABASE TABLE I'll use to track the user's info

require "sqlite3"

db = SQLite3:DATABASE.new("security_project.db")

user_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS user(
		id 	INTEGER PRIMARY KEY,
		name 	VARCHAR(255),
		age INT,
		email VARCHAR(255),
		location VARCHAR(255),
		social_media VARCHAR(255),
		time VARCHAR(255),
		date VARCHAR(255)
	)
SQL
#CREATES a new table
db.execute(user_table_cmd)

#Create a METHOD to prompt user and STORES that information into a database

#Create METHOD to figure out the time 
	#LOOKS for current time 
	
