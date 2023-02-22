require_relative './find_genres.rb'

def select_genre
  find_genres
  puts "\nPlease select a genre by number : "
  select_genre = gets.chomp.to_i
  'Invalid input!' if select_genre > @genres.length
  @genres[select_genre - 1]
end
