require '/decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @decoration.correct_name[0...10]
  end
end
