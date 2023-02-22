require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
  before :each do
    @label = Label.new('title', 'color')
  end

  it 'is an instance of Label' do
    expect(@label).to be_an_instance_of(Label)
  end

  it 'has an id number' do
    expect(@label.id).to be_an(Integer)
  end

  it 'has a title attribute of type string' do
    expect(@label.title).to be_a(String)
  end

  it 'can add a title' do
    @label.title = 'title'
    expect(@label.title).to eq('title')
  end

  it 'has a color attribute of type string' do
    expect(@label.color).to be_a(String)
  end

  it 'can add a color' do
    @label.color = 'color'
    expect(@label.color).to eq('color')
  end

  it 'has an items attribute of type array' do
    expect(@label.items).to be_a(Array)
  end

  it 'can add an item' do
    item = Item.new('2021-05-02')
    @label.add_item(item)
    expect(@label.items).to include(item)
  end

  it 'the length of items is equal to the number of items added' do
    @label.add_item(Item.new('2021-05-02'))
    @label.add_item(Item.new('2020-04-07'))
    @label.add_item(Item.new('2020-01-01'))
    expect(@label.items.length).to eq(3)
  end
end
