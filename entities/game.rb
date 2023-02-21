# class Game
require_relative '../item'
require 'date'

class Game < Item
  attr_reader :id
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, last_played_at, multiplayer: false)
    super(publish_date)
    @id = Random.rand(1...1000)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?()
    super && (DateTime.now - Date.parse(last_played_at)).to_i / 365 > 2
  end

end
