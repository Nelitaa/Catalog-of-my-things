require_relative 'item'

class Genre
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
  end
end