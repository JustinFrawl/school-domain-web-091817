# code here!
class School

  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_roster = {}
  if @roster
    @roster.each do |grade, student_array|
      new_roster[grade] = student_array.sort
    end
    new_roster
  end
  end

  #   @roster.each do |grade_class, student|
  #   if  grade_class = grade
  #     student_name << student
  #   end
  # end
  # student_name
end
