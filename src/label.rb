require_relative './item'
# label class
class Label
  attr_accessor :title, :color, :item

  def initialize(_id, title, _color, item: [])
    @id = Random.rand(1...1000)
    @title = title
    @item = item
  end

  def add_item(item)
    item.label = self
    @item.push(item)
  end
end
