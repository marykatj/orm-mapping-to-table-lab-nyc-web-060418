class Student

attr_accessor :name, :grade

@@all = []

def initialize(name, grade)
  @name = name
  @grade = grade
  self.class.all << self
end

def self.all
  @@all
end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
