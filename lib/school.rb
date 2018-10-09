require "pry"

class School

def roster
  @roster
end

def initialize(name)
  @school = name
  @roster = {}
end

def add_student(student_name, grade)
  @roster[grade] = [] unless @roster[grade]
  @roster[grade] << student_name
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, student_array|
    @roster[grade] = student_array.sort
  end
end

end
