#list out the students
# find specific student

class Student

attr_accessor :name
# this creates these methods
  # def name
  #   @name
  # end
  #
  # def name = (other)
  #   @name = other
  # end
#------------------------------

@@students = []

   def self.all
     @@students
   end

   def self.find_by_name(name)
     @@students.find { |student|
       student.name == name }
    end

  def initialize(name)
    @name = name
    @@students << self
  end
end


Student.new "Astrid"
Student.new "Jared"
Student.new "Kevin"
Student.new "Kirt"
Student.new "Thanh"
Student.new "Bharvi"


 Student.all
p Student.find_by_name"Astrid"
