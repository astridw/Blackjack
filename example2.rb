
students = []

class Student
  attr_accessor = :first_name, :last_name, :grade

  def initialize(first_name, last_name, grade)
    @first_name = first_name
    @last_name = last_name
    @grade = grade
  end
end



student = Student.new("Astrid", "Willis", 12)
student = Student.new("Stephanie", "Willis", 8)
student = Student.new("Brandon", "Countee", 12)
student = Student.new("Micah", "Countee", 4)


students << student



p students
