require_relative '../classes/book'

module BookModule
  def find_books
    puts 'Books: '
    if @books.empty?
      puts "\nNo  books added yet. Please add some  . . . "
    else
      @books.each_with_index do |book, index|
        puts "[Book #{index + 1}]. Publisher : #{book.publisher},+
        Publish Date : #{book.publish_date}, Cover State : #{book.cover_state}"
      end
    end
  end

  def add_a_book
    puts 'Please enter the publisher of the book: '
    publisher = gets.chomp

    puts 'Please enter the cover state of the book: '
    cover_state = gets.chomp

    puts 'Please enter publish date of the book [Date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    book = Book.new(publisher, cover_state, publish_date)

    @books.push(book)
    author = add_author
    author.add_item(book)

    puts "Book created with #{author.first_name} author added successfully!"
  end
end
