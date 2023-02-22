require_relative 'item'
require 'json'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'on_spotify' => @on_spotify,
      'publish_date' => @publish_date
    }.to_json(*args)
  end

  def self.json_create(object)
    new(object['on_spotify'], object['publish_date'])
  end
end
