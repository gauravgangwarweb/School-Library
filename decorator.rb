require './nameable'

class Decorator < Nameable
  def initialize(nameable)
    @decoration = nameable
    super()
  end

  attr_accessor :decoration

  def correct_name
    @decoration.correct_name
  end
end
