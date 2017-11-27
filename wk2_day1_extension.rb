class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_all_books()
    return @books
  end

end
