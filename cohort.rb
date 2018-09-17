class Student

  attr_accessor

  def initialize(input_name,input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def print_details()
    puts "My name is #{@name} and I'm in Cohort #{@cohort}"
  end
end
