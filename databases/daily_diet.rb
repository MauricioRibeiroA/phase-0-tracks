require "sqlite3"
require "faker"

db = SQLite3::Database.new("nutrition.db")
db.results_as_hash = true

CREATE_TABLE_CMD = <<-SQL 
CREATE TABLE IF NOT EXISTS foods (
id INTEGER PRIMARY KEY,
name VARCHAR(255)
)
SQL

CREATE_TABLE1_CMD = <<-SQL 
CREATE TABLE IF NOT EXISTS users (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
foods_id INTEGER,
FOREIGN KEY (foods_id) REFERENCES foods(id)
)
SQL

db.execute(CREATE_TABLE_CMD)
db.execute(CREATE_TABLE1_CMD)

def create_foods(db, food_name)
	db.execute("INSERT INTO foods (name) VALUES (?)", [food_name])
end

10.times do
	create_foods(db, Faker::Food.ingredient)
end

def create_users(db, user_name, number)
	db.execute("INSERT INTO users (name, foods_id) VALUES (?, ?)", [user_name, number])
end

10.times do
	create_users(db, Faker::Name.name, Faker::Number.between(1, 10))
end




MY_PRINT_FUNCTION = db.execute("SELECT * FROM users as us INNER JOIN foods as fo ON us.foods_id = fo.id")
MY_PRINT_FUNCTION.each do |info|
	p "The user #{info[1]} likes to eat #{info[4]}"
end
