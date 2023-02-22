# class App
require_relative './modules/game_module'
require_relative './modules/author_module'
require_relative './modules/label_module'
require_relative './modules/book_module'
require './util/json_storage'

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

  def find_books
    puts 'get_books'
  end

  def display_interactive_console
    puts
    puts 'Please choose an option by entering a number:'
    puts
    puts ' 1.  List all books'
    puts ' 2.  List all music albums'
    puts ' 3.  List all movies'
    puts ' 4.  List all games'
    puts ' 5.  List all genres'
    puts ' 6.  List all labels'
    puts ' 7.  List all authors'
    puts ' 8.  List all sources'
    puts ' 9.  Add a book'
    puts ' 10. Add a music album'
    puts ' 11. Add a movie'
    puts ' 12. Add a game'
    puts ' 0 - Exit'
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
    end
  end
end
