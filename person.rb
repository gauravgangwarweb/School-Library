require './nameable'

class Person < Nameable
  attr_accessor :name, :age, :books, :rentals
  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age < 18
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
