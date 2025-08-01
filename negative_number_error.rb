class NegativeNumberError < StandardError
  def initialize(negatives)
    super("Negatives numbers are not allowed: #{negatives.join(', ')}")
  end
end
