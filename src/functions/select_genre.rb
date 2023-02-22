require_relative './find_genres'
require_relative './create_genre'

def select_genre
  find_genres
  puts '0. Add a new genre.'
  puts "\nPlease select a genre by number : "
  select_genre = gets.chomp.to_i
  if select_genre.zero?
    create_genre
  elsif select_genre > @genres.length
    puts 'Invalid input!'
  else
    @genres[select_genre - 1]
    puts "You selected option #{select_genre}."
  end
end
