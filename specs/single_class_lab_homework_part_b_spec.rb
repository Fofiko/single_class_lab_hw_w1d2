require("minitest/autorun")
require("minitest/rg")
require_relative("../single_class_lab_part_b.rb")

class TeamTest < Minitest::Test

  def setup
    @team = Team.new("Olympiakos", ["Jane", "Joan"], "Nick")
  end


  def test_get_name
    assert_equal("Olympiakos", @team.get_name)
  end

  def test_get_players
    assert_equal(["Jane", "Joan"], @team.get_players)
  end

  def test_get_coach
    assert_equal("Nick", @team.get_coach)
  end

  def test_set_coach
    @team.set_coach("Bob")
    assert_equal("Bob", @team.get_coach)
  end



end
