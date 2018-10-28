require './lib/iterator/book'
require './lib/iterator/bookshelf'

class BookshelfIterator
  def initialize(bookshelf)
    @bookshelf = bookshelf
    @index = 0
  end

  def has_next?
    @index < @bookshelf.length
  end

  def next
    value = @bookshelf.get_books_at(@index)
    @index += 1
    value
  end
end
