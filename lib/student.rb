class Student

attr_accessor :name, :grade, :id

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

end
