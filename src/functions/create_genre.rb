require_relative '../classes/genre.rb'

def create_genre
  puts "\nName of the genre: "
  name_genre = gets.chomp
  genre = Genre.new(name_genre)
  @genres << genre
  puts 'Genre added successfully!'
end
