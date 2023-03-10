require './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @decoration.correct_name.capitalize!
  end
end
