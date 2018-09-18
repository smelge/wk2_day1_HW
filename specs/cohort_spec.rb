require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class TestStudent < MiniTest::Test

  def test_student_name
    student1 = Student.new("Tavy", "E25", " ")
    assert_equal("Tavy", student1.name)
  end

  def test_student_cohort
    student2 = Student.new("Thomas", "E25", "Ruby")
    assert_equal("Thomas", student2.name)
  end

  def test_update_name
    student2 = Student.new("Thomas", "E25", "Ruby")
    student2.name = "Billy-Bob Groat"
    assert_equal("Billy-Bob Groat", student2.name)
  end

  def test_update_cohort
    student2 = Student.new("Tavy", "E25", "Ruby")
    student2.cohort = "E100"
    assert_equal("E100", student2.cohort)
  end

  def test_talking
    student2 = Student.new("Thomas", "E25", "Ruby")
    assert_equal("I like turtles", student2.talking)
  end

  def test_favlang
    student2 = Student.new("Thomas", "E25", "Ruby")
    assert_equal("My favourite language is Ruby", student2.favlang)
  end
end
