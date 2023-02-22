require_relative '../classes/author'

module AuthorModule
  def find_authors
    puts 'There are no authors yet, please add an author(s)!' if @authors.empty?
    puts 'Authors:'
    @authors.each_with_index do |author, index|
      puts "#{index + 1}) first name: #{author.first_name}, last name: #{author.last_name}"
    end
  end

  def select_author
    find_authors
    print "\nPlease select an author by typing the corresponding number : "
    author_input = gets.chomp.to_i
    @authors[author_input.to_i - 1]
  end

  def create_author()
    print 'Enter the first name of the author to the game: '
    firstname = gets.chomp
    print 'Enter the last name of the author to the game: '
    lastname = gets.chomp
    author = Author.new(firstname, lastname)
    @authors << author
    author
  end

  def add_author
    if @authors.empty?
      puts 'Please add a author!'
      create_author
    else
      puts 'Select the accurate author or add a new author: '
      puts '[ 1 ] Select from existing authors'
      puts '[ 2 ] Add a new author'

      input = gets.chomp.to_i

      case input
      when 1
        select_author
      when 2
        create_author
      else
        puts 'Please enter 1 or 2!'
      end
    end
  end
end
