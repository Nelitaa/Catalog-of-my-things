require './util/json_storage'
require_relative './modules/game_module'
require_relative './modules/author_module'
require_relative './modules/label_module'
require_relative './modules/book_module'
require_relative './functions/find_music_albums'
require_relative './functions/find_genres'
require_relative './functions/add_a_music_album'

class App
  include GameModule
  include AuthorModule
  include LabelModule
  include BookModule

  def initialize
    @games = JSONStorage.load_data('games')
    @authors = JSONStorage.load_data('authors')
    @labels = JSONStorage.load_data('labels')
    @books = JSONStorage.load_data('books')
    @music_albums = JSONStorage.load_data('music_albums').empty? ? [] : JSONStorage.load_data('music_albums')
    @genres = JSONStorage.load_data('genres').empty? ? [] : JSONStorage.load_data('genres')
  end

  ACTIONS = {
    1 => :find_books,
    2 => :find_music_albums,
    3 => :find_movies,
    4 => :find_games,
    5 => :find_genres,
    6 => :find_labels,
    7 => :find_authors,
    8 => :find_sources,
    9 => :add_a_book,
    10 => :add_a_music_album,
    11 => :add_a_movie,
    12 => :add_a_game,
    0 => :exit
  }.freeze

  def find_movies
    puts 'Not implemented yet'
  end

  def find_sources
    puts 'Not implemented yet'
  end

  def add_a_movie
    puts 'Not implemented yet'
  end

  def display_interactive_console
    puts "\nPlease choose an option by entering a number:
    1.  List all books
    2.  List all music albums
    3.  List all movies
    4.  List all games
    5.  List all genres
    6.  List all labels
    7.  List all authors
    8.  List all sources
    9.  Add a book
    10. Add a music album
    11. Add a movie
    12. Add a game
    0.  Exit"
  end

  def run
    entry = -1
    until entry.zero?
      display_interactive_console
      entry = gets.chomp.to_i
      option = ACTIONS[entry]
      option ? send(option) : puts('Invalid input')
      JSONStorage.save_data('games', @games)
      JSONStorage.save_data('authors', @authors)
      JSONStorage.save_data('labels', @labels)
      JSONStorage.save_data('books', @books)
      JSONStorage.save_data('music_albums', @music_albums)
      JSONStorage.save_data('genres', @genres)
    end
  end
end
