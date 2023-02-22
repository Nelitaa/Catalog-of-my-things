def find_genres
  puts "\nList of Genres:"
  puts "\n=>No genres added to list yet!<=" if @genres.empty?
  @genres.each_with_index do |genre, index|
    puts "#{index + 1}. #{genre.name}"
  end
  puts "\n End of list.\n"
end
