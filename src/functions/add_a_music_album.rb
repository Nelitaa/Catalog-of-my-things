require_relative './add_genre'
require_relative '../classes/music_album'

def add_a_music_album
  puts 'On spotify?[y/n]: '
  on_spotify = gets.chomp.to_s.downcase == 'y'
  puts 'Published date?[yyyy-mm-dd]: '
  published_date = gets.chomp.to_s
  music_album = MusicAlbum.new(on_spotify, published_date)
  @music_albums << music_album
  puts 'Music album added successfully!'
  add_genre
end
