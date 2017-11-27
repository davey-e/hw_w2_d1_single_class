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

  def test_student_can_talk
    assert_equal("I can talk!", @student.talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end

end

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Scotland", ["John","Dave","Giuseppe"], "Alex", 0)
  end
  #Part B

  def test_team_name
    expected = "Scotland"
    actual = @team.team_name()
    assert_equal(expected, actual)
  end

  def test_players
    expected = ["John","Dave","Giuseppe"]
    actual = @team.players()
    assert_equal(expected, actual)
  end

  def test_coach
    expected = "Alex"
    actual = @team.coach_name()
    assert_equal(expected, actual)
  end

  def test_set_coach_name
    @team.coach_name = "Craig"
    assert_equal("Craig", @team.coach_name)
  end

  def test_add_new_player
    @team.add_player("Robert")
    expected = ["John","Dave","Giuseppe","Robert"]
    actual = @team.players()
    assert_equal(expected, actual)
  end

  def test_player_is_in_team
    actual = @team.player_is_in_team("Dave")
    expected = true
    assert_equal(expected, actual)
  end

  def test_points
    expected = 0
    actual = @team.points()
    assert_equal(expected, actual)
  end

  def test_set_points
    @team.points = 10
    assert_equal(10, @team.points)
  end

  def test_game_result__win
    @team.update_points("won")
    expected = 3
    actual = @team.points()
    assert_equal(expected, actual)

  end

  def test_game_result__lose
    @team.update_points("lost")
    expected = 0
    actual = @team.points()
    assert_equal(expected, actual)
  end


end
