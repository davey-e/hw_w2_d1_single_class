require ("minitest/autorun")
require ("minitest/rg")
require_relative("../wk2_day1_extension")

class TestLibrary < MiniTest::Test

  def setup

    book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/17"
      }
    }
    book2 = {
      title: "the_hobbit",
      rental_details: {
        student_name: "John",
        date: "20/12/17"
      }
    }
    book3 = {
      title: "game_of_thrones",
      rental_details: {
        student_name: "Dave",
        date: "30/12/17"
      }
    }

    @books = [book1, book2, book3]

    @library = Library.new(@books)
  end

  def test_books
    expected = @books
    actual = @library.books
    assert_equal(expected, actual)
  end

  def test_list_all_books
    expected = @books
    actual = @library.list_all_books()
    assert_equal(expected, actual)
  end

  def test_list_single_book_info
    expected = {
      title: "game_of_thrones",
      rental_details: {
        student_name: "Dave",
        date: "30/12/17"
      }
    }
    actual = @library.list_single_book_info("game_of_thrones")
    assert_equal(expected, actual)
  end



end
