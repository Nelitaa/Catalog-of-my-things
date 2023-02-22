require_relative './find_genres.rb'
require_relative './create_genre.rb'

def select_genre
  find_genres
  puts '0. Add a new genre.'
  puts "\nPlease select a genre by number : "
  select_genre = gets.chomp.to_i
  if select_genre == 0
    create_genre
  elsif select_genre > @genres.length
    puts 'Invalid input!'
  else
    @genres[select_genre - 1]
    puts "You selected option #{select_genre}."
  end
end
