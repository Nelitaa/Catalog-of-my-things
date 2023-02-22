require_relative '../classes/genre'

describe Genre do
  before :each do
    @genre = Genre.new('Rock')
  end

  it 'is an instance of Genre' do
    expect(@genre).to be_an_instance_of(Genre)
  end

  it 'has an id number' do
    expect(@genre.id).to be_an(Integer)
  end

  it 'has a name attribute of type string' do
    expect(@genre.name).to be_a(String)
  end

  it 'can add a name' do
    @genre.name = 'Rock'
    expect(@genre.name).to eq('Rock')
  end

  it 'has an items attribute of type array' do
    expect(@genre.items).to be_a(Array)
  end

  it 'can add an item' do
    @genre.add_item('Rock')
    expect(@genre.items).to include('Rock')
  end

  it 'the length of items is equal to the number of items added' do
    @genre.add_item('Rock')
    @genre.add_item('Pop')
    expect(@genre.items.length).to eq(2)
  end
end
