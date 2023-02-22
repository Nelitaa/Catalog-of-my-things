require_relative '../classes/genre.rb'

def create_genre
  puts "\nName of the genre: "
  name = gets.chomp
  genre = Genre.new(name)
  @genres << genre
  puts 'Genre added successfully!'
end
