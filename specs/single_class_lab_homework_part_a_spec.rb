require("minitest/autorun")
require("minitest/rg")
require_relative("../single_class_lab_part_a.rb")

class StudentTest < Minitest::Test

  def test_get_name
    student = Student.new("Michael", "E24")
    assert_equal("Michael", student.name)
  end

  def test_get_cohort
    student = Student.new("Foteini", "E24")
    assert_equal("E24", student.cohort)
  end

  def test_set_name
    student = Student.new("Dave", "E24")
    student.set_name("David")
    assert_equal("David", student.name)
  end

  def test_set_cohort
    student = Student.new("Dave", "E24")
    student.set_cohort("G8")
    assert_equal("G8", student.cohort)
  end

  def test_can_they_talk
    student = Student.new("Marcel", "E29")
    assert_equal("I can talk!", student.talk)
  end

  def test_say_favourite_language
    student = Student.new("Marcel", "E29")
    response = student.favourite_language("Ruby")
    assert_equal("My favourite language is Ruby, man!", response)
  end


end
