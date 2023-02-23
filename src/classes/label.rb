class Label
  attr_accessor :id, :title, :color, :items

  def initialize(title, color, items: [])
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = items
  end

  def add_item(item)
    item.label = self
    @items.push(item)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => @id,
      'title' => @title,
      'color' => @color,
      'items' => @items
    }.to_json(*args)
  end

  def self.json_create(object)
    new(object['id'], object['title'], object['color'], object['items'])
  end
end
