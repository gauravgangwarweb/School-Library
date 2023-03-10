class Rental
  attr_accessor :person, :date
  attr_reader :book

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
