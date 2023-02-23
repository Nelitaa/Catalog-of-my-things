require_relative './item'
require 'date'
require 'json'

class Game < Item
  attr_reader :id
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, last_played_at, multiplayer)
    super(publish_date)
    @id = Random.rand(1...1000)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?()
    super && (DateTime.now - Date.parse(last_played_at)).to_i / 365 > 2
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'publish_date' => @publish_date,
      'multiplayer' => @multiplayer,
      'last_played_at' => @last_played_at
    }.to_json(*args)
  end

  def self.json_create(object)
    new(object['publish_date'], object['multiplayer'], object['last_played_at'])
  end
end
