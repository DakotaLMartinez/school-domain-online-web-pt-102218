require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end
  
  def grade(grade)
    self.roster[grade]
  end 
  
  def sort
    new_hash = {}
    @roster.reduce({}) do |memo, grade_and_names|
      grade, names = grade_and_names
      memo[grade] = names.sort
      memo
    end
    # new_hash
   # binding.pry
  end

end