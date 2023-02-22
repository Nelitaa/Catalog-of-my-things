require_relative '../classes/music_album.rb'
require 'date'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new(true, '2023-08-08')
  end

  it 'is an instance of MusicAlbum' do
    expect(@music_album).to be_an_instance_of(MusicAlbum)
  end

  it 'has an id number' do
    expect(@music_album.id).to be_an(Integer)
  end

  it 'has a on_spotify attribute of type boolean' do
    expect(@music_album.on_spotify).to be(true).or be(false)
  end

  it 'has an archived attribute of type boolean' do
    expect(@music_album.archived).to be(true).or be(false)
  end

  it 'can add a publish_date' do
    @music_album.publish_date = Date.today
    expect(@music_album.publish_date).to eq(Date.today)
  end

  it 'can add a on_spotify' do
    @music_album.on_spotify = true
    expect(@music_album.on_spotify).to be(true)
  end

  it 'can add a archived' do
    @music_album.archived = true
    expect(@music_album.archived).to be(true)
  end

  it 'return true when parents method and on_spotify are true' do
    expect(@music_album.can_be_archived?).to be(true)
  end
end
