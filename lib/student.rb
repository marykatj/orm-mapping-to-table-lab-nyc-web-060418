class Student

attr_reader :id
attr_accessor :name, :grade

#@@all = []

def initialize(name, grade, id = nil)
  @name = name
  @grade = grade
  @id = id
  #self.class.all << self
end

# def self.all
#   @@all
# end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
def self.create_table
  sql = <<-SQL
    CREATE TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    );
  SQL
  DB[:conn].execute(sql)
end

def self.drop_table
  sql = <<-SQL
    DROP TABLE students;
  SQL
  DB[:conn].execute(sql)
end

def save
  sql = <<-SQL
    INSERT INTO students (name, grade)
    VALUES (?, ?)
  SQL

  DB[:conn].execute(sql, self.name, self.grade)
end

def self.create(name:, grade:)
  new_student = Student.new(name, grade)
  new_student.save
  new_student
end




end
