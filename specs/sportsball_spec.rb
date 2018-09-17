require('minitest/autorun')
require('minitest/rg')
require_relative('../sportsball.rb')

class TestSportsBall < MiniTest::Test

  def test_get_team_name
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    assert_equal("The Twickenham Twiddlers",sportsball.team)
  end

  def test_get_players
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    assert_equal(["George Bovril","Frank Lampshade"],sportsball.players)
  end

  def test_get_coach
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    assert_equal("Peter Marbles",sportsball.coach)
  end

  def test_update_coach
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    sportsball.coach = "Barry Chocolate"
    assert_equal("Barry Chocolate",sportsball.coach)
  end

  def test_add_new_player
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    sportsball.players << "Gary Noodles"
    assert_equal(["George Bovril","Frank Lampshade","Gary Noodles"],sportsball.players)
  end

  def test_player_exists_true
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"w")
    assert_equal(true,sportsball.player_exists("George Bovril"))
  end

  def test_player_exists_false
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"l")
    assert_equal(false,sportsball.player_exists("Mary Baggins"))
  end

  def test_win_lose_update_points
    sportsball = SportsBall.new("Peter Marbles","The Twickenham Twiddlers",["George Bovril","Frank Lampshade"],"w")
    assert_equal(1,sportsball.point_result)
  end

end
