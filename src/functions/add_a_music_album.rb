require_relative './add_genre.rb'
require_relative '../classes/music_album.rb'

def add_a_music_album
  puts 'On spotify?[y/n]: '
  on_spotify = gets.chomp.to_s.downcase == 'y'
  puts 'Published date?[yyyy-mm-dd]: '
  published_date = gets.chomp.to_s
  music_album = MusicAlbum.new(on_spotify, published_date)
  @music_albums << music_album
  puts 'Music album added successfully!'

  genre = add_genre
  genre.add_item(music_album)
end
