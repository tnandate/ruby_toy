class Bookshelf
  def initialize
    @books = []
  end

  def get_books_at(index)
    @books[index]
  end

  def add_book(book)
    @books << book
  end

  def length
    @books.length
  end

  def iterator
    BookshelfIterator.new(self)
  end
end
