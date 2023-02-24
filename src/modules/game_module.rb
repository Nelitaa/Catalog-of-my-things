require_relative '../classes/game'
require_relative '../classes/author'
require_relative './author_module'

module GameModule
  def find_games
    puts 'Game List : '
    if @games.empty?
      puts "\nNo  games added yet. Please add some  . . . "
    else
      @games.each_with_index do |game, index|
        puts "[Game #{index + 1}]"
        puts "ID :               #{game.id}"
        puts "Multiplayer :      #{game.multiplayer}"
        puts "Publish Date :     #{game.publish_date}"
        puts "Last Played Date : #{game.last_played_at}"
        puts "Label :            [Title : #{game.label.title}, Color : #{game.label.color}]" if game.label
        puts
      end
    end
  end

  def add_a_game
    puts 'Please type the word multiplayer: '
    puts 'Is the game a multiplayer one? [Y/N]: '
    multiplayer = gets.chomp.to_s.downcase == 'y'

    puts 'Please enter publish date of the game [Date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    puts 'Please enter last played date [Date in format (yyyy-mm-dd)]'
    last_played_date = gets.chomp

    game = Game.new(publish_date, last_played_date, multiplayer)

    @games.push(game)
    label = add_a_label
    game.add_label(label)
    label.add_item(game)
    puts "Game created with #{label.color} label added successfully!"
  end
end
