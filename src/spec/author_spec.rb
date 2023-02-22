require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new 'Amen', 'Tetteh'
    @item = Item.new '2023-02-22'
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Amen"' do
    @first_name == 'Amen'
  end

  it 'author last name to be "Tetteh"' do
    @last_name == 'Tetteh'
  end

  it 'should return the item passed into author items array' do
    @author.add_item(@item)
    expect(@author.items.length).to eq(1)
  end
end
