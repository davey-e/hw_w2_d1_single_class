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

  def list_single_book_rental_info(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
    return nil
  end

  def add_new_book(book_title)
    @books.push(
      {
        title: book_title,
        rental_details: {
          student_name: "",
          date: ""
        }
      }
    )
  end

  def update_rental_details(book_title, student_name, date)
    new_rental_details = {
      student_name: student_name,
      date: date
    }
    for book in @books
      if book[:title] == book_title
        book[:rental_details].update(new_rental_details)
      end
    end
  end

end
