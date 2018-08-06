class Team

  attr_reader(:name, :players, :coach)
  attr_writer(:name, :players, :coach)



  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end


  def get_name
    return @name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end


  def set_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def lookup_player(player_name)
    return @players.include?(player_name)
  end




end
