require ("minitest/autorun")
require ("minitest/rg")
require_relative("../pair_prog_wk2_day1")

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("John", 18)
  end

  #Part A

  def test_student_name
    expected = "John"
    actual = @student.student_name()
    assert_equal(expected, actual)
  end

  def test_cohort
    expected = 18
    actual = @student.cohort()
    assert_equal(expected, actual)
  end

  def test_set_student_name
    @student.set_student_name("Dave")
    assert_equal("Dave", @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort(19)
    assert_equal(19, @student.cohort)
  end

end
