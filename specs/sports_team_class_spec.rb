require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../sports_team_class.rb')

class SportsTeamClassTests < MiniTest::Test

  def test_get_team_name
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Rob','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    #####################
    #ASSERT
    assert_equal('Edinburgh FC', sports_team_1.team_name)
  end

  def test_get_team_players
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    #####################
    #ASSERT
    assert_equal(['Bob','Pele','Tony','Christinith','Margaret'], sports_team_1.team_players)
  end

  def test_get_team_manager
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    #####################
    #ASSERT
    assert_equal('Paulo Nutini', sports_team_1.team_manager)
  end

  def test_set_team_manager
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.team_manager='Basil Brush'
    #ASSERT
    assert_equal('Basil Brush', sports_team_1.team_manager)
  end

  def test_add_team_player
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.add_team_player('Handball Maradona', 'Dr Phil')
    #ASSERT
    assert_equal(['Bob','Pele','Tony','Christinith','Margaret', 'Handball Maradona', 'Dr Phil'], sports_team_1.team_players)
  end

  def test_is_on_team__is_on_team
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.is_on_team('Pele')
    #ASSERT
    assert_equal("Yes, Pele plays left back in the changing room.", sports_team_1.is_on_team('Super Kenny'))
  end

  def test_is_on_team__not_on_team
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.is_on_team('Super Kenny')
    #ASSERT
    assert_equal("No, Super Kenny is now a motivational speaker.", sports_team_1.is_on_team('Super Kenny'))
  end

  def test_win_loose_draw__win
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.win_loose_draw('win')
    #ASSERT
    assert_equal(3, sports_team_1.points)
  end

  def test_win_loose_draw__loose
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.win_loose_draw('loose')
    #ASSERT
    assert_equal(0, sports_team_1.points)
  end

  def test_win_loose_draw__draw
    #ARRANGE
    sports_team_1 = SportsTeam.new('Edinburgh FC', ['Bob','Pele','Tony','Christinith','Margaret'],'Paulo Nutini')
    #ACT
    sports_team_1.win_loose_draw('draw')
    #ASSERT
    assert_equal(1, sports_team_1.points)
  end

end
