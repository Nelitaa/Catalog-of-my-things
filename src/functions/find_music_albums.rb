def find_music_albums
  puts "\nList of Music Albums:"
  puts "\n=>No music albums added to list yet!<=" if @music_albums.empty?
  @music_albums.each do |album|
    puts "id: #{album.id}, date:#{album.publish_date}, On spotify: #{album.on_spotify}"
  end
  puts "\n End of list.\n"
end
