require ("minitest/autorun")
require ("minitest/rg")
require_relative("../pair_prog_wk2_day1")

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("John", 18)
  end



end
