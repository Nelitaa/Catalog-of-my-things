require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('publisher', 'cover_state', '2022-08-09')
  end

  it 'is an instance of Book' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'checks book publisher' do
    expect(@book.publisher).to eq 'publisher'
  end

  it 'checks book author' do
    expect(@book.cover_state).to eq 'cover_state'
  end

  it 'checks book archived' do
    expect(@book.archived).to eq false
  end
end
