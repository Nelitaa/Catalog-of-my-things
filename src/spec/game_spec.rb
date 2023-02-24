require_relative '../classes/game'

describe Game do
  before :each do
    @game = Game.new '2022-10-11', '2019-12-10', 'multiplayer'
  end

  it 'game should be an instance of game class' do
    expect(@game).to be_an_instance_of Game
  end

  it 'game should be an archived' do
    expect(@game.can_be_archived?).to be true
  end

  it 'last played date is 2022-10-11' do
    expect @last_played_at == '2022-10-11'
  end
end
