class NegativeNumberError < StandardError
  def initialize(negatives)
    super("Negative numbers are not allowed: #{negatives.join(', ')}")
  end
end
