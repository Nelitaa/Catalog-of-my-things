require_relative './create_genre'
require_relative './select_genre'

def add_genre
  if @genres.empty?
    puts "\nAdd a genre:"
    create_genre
  else
    puts "\nSelect a genre: "
    select_genre
  end
end
