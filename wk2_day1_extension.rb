class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_all_books()
    return @books
  end

  def list_single_book_info(book_title)
    for book in @books
      return book if book[:title] == book_title
    end
    return nil
  end


end
