#PSUDOCODE#
#REQUIRE things you will need to set up the database
#Create the DATABASE TABLE I'll use to track the user's info

require "sqlite3"

db = SQLite3:DATABASE.new("security.db")

user_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS user(
		id 	INTEGER PRIMARY KEY,
		name 	VARCHAR(255),
		age INT,
		location VARCHAR(255),
		social_media VARCHAR(255)
	)
SQL

db.execute(user_table_cmd)