class SportsBall
  #attr_accessor =
  attr_accessor :coach,:players,:points
  attr_reader :team

  def initialize(coach,team_name,players,points)
    @coach = coach
    @team = team_name
    @players = players
    @points = points
    @total_points = 0
  end

  total_points = 0

  def player_exists(name)
    for guy in @players
      if guy == name
        return true
      else
        return false
      end
    end
  end

  def point_result
    if @points == 'w'
      @total_points +=  1
    end
  end
end
