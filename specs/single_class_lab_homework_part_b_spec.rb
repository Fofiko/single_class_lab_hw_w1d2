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

  def test_add_player
    @team.add_player("Janice")
    assert_equal(["Jane", "Joan", "Janice"], @team.get_players)
  end

  def test_lookup_player__found
    found = @team.lookup_player("Joan")
    assert_equal(true, found)
  end

  def test_lookup_player__not_found
    found = @team.lookup_player("Catherine")
    assert_equal(false, found)
  end








end
