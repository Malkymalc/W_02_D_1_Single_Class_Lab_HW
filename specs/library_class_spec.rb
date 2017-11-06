require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../library_class.rb')

class LibraryClassTests < MiniTest::Test
  def initialize
    @library_hash = [
      {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "1984",
        rental_details: {
         student_name: "Dave",
         date: "24/05/16"
        }
      },
      {
        title: "zen_and_the_art_of_motorcyle_maintainance",
        rental_details: {
         student_name: "Karen",
         date: "23/8/16"
        }
      }
    ]

    @new_book =   {
        title: "the_very_hungry_catapillar",
        rental_details: {
         student_name: "George",
         date: "17/03/01"
        }
      }
  end


  def test_get_library_detailed
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    #ASSERT
    assert_equal(@library_hash, library_1.library)
  end


  def test_get_library__summary
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    result = library_1.library_summary
    #ASSERT
    assert_equal(["lord_of_the_rings','1984','zen_and_the_art_of_motorcyle_maintainance"], result)
  end


  def test_query_book_details__found
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    result = library_1.book_rental_details('1984')
    #ASSERT
    assert_equal({
      title: "zen_and_the_art_of_motorcyle_maintainance",
      rental_details: {
       student_name: "Karen",
       date: "23/8/16"
       }, result)
  end


  def test_query_book_details__not_found
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    result = library_1.book_details('Not a book')
    #ASSERT
    assert_equal("Sorry, this book was not found", result)
  end


  def test_query_book_rental_details__found
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    result = library_1.book_rental_details('1984')
    #ASSERT
    assert_equal({
       student_name: "Dave",
       date: "24/05/16"
    }, result)
  end

  def test_query_book_rental_details__not_found
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    result = library_1.book_rental_details('Not a book')
    #ASSERT
    assert_equal("Sorry, this book was not found", result)
  end

  def test_add_book
    #ARRANGE
    library_1 = Library.new(@library_hash)
    #ACT
    library_1.add_book(@new_book)
    result = library_1.library.count
    #ASSERT
    assert_equal(4, result)
  end

end
