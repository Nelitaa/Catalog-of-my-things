require_relative './create_genre.rb'
require_relative './select_genre.rb'

def add_genre
  if @genres.empty?
    puts "\nAdd a genre:"
    create_genre
  else
    puts "\nSelect a genre: "
    select_genre
  end
end
