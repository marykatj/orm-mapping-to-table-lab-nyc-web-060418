class Student

attr_reader :id
attr_accessor :name, :grade

@@all = []

def initialize(name, grade, id = nil)
  @name = name
  @grade =
  @id = id
  self.class.all << self
end

def self.all
  @@all
end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
def self.create_table
  sql = <<- SQL
    CREATE TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
    );
  SQL
  DB[:conn].execute(sql)
end




end
