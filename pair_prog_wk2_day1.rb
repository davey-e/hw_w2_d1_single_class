class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end


  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(student_name)
    @student_name = student_name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end

class Team

  attr_accessor :team_name, :players, :coach_name


  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name

  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach_name
    return @coach_name
  end

  def set_coach_name(coach_name)
    @coach_name = coach_name
  end

  def add_player(player_name)
    @players.push(player_name)
  end

  def player_is_in_team(player_name)
    if @players.include?(player_name)
      return true
    else
      return false
    end
  end

end
