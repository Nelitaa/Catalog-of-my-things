require 'date'

class Item
  attr_reader :id
  attr_accessor :publish_date, :archived, :genre, :author, :source, :label

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = publish_date
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
    Date.today - Date.parse(@publish_date).year > 10
  end

  def move_to_archive
    return unless can_be_archived?
    @archived = true
  end
end
