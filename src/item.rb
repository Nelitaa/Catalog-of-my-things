class Item
  attr_reader :id
  attr_accessor :publish_date, :archived, :genre, :author, :source, :label

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def can_be_archived?
    current_date = Date.today
    year = current_date.year - @publish_date.year
    return year < 10 ? false : true
  end

 def move_to_archive
  @archived = can_be_archived?
 end

end
