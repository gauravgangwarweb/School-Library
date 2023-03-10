class Book
  attr_accessor :title, :author, :person, :date
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(person, date, self)
  end
end
