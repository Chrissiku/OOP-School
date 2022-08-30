require_relative 'base_decorator'

class TrimmerDecorator < Decorator
  # Method correct_name is overridden from Decorator class
  def correct_name
    @nameable.correct_name[0..10]
  end
end
