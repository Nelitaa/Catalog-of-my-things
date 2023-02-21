require_relative './item'
# Book class
class Book < item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date, archived: false, id: nil)
    super(id, publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    cover_state == 'bad' ? true : super
  end
end
