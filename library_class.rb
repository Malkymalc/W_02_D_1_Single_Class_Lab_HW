class Library
    def initialize(library_arr)
      @library = library_arr
    end

    attr_reader :library
    attr_accessor

    #Could fancify the output
    def library_summary
      lib_sum_arr = @library.map { |book|
      book[:title]  }
      return lib_sum_arr
    end

    #Could fancify the output
    def book_details(book_str)
      have_book = library_summary.include?(book_str)
      return "Sorry, this book was not found" unless have_book

      book_obj = @library.select { |book|
      book[:title] == book_str }
      return book_obj
    end

    #Could fancify the output
    def book_rental_details(book_str)
      have_book = library_summary.include?(book_str)
      return "Sorry, this book was not found" unless have_book
      return book_details(book_str)[:rental_details]
    end


    def add_book(*book_objs_arr)
      book_objs_arr.each {|book_obj|
        @library.push(book_obj)
      }
      return "#{book_objs_arr.count} books added to library"
    end
end
