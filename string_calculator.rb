class StringCalculator
  def add(input)
    return 0 if input.strip.empty?

    numbers = normalize_and_extract_numbers(input)
    validate_no_negatives!(numbers)

    numbers.map { |num| num > 1000 ? 0 : num }.sum
  end

  private

  def normalize_and_extract_numbers(input)
    sanitized = input.gsub('\n', ',').gsub(/[^0-9\-]+/, ',')
    parts = sanitized.split(',').reject(&:empty?)

    parts.map(&:to_i)
  end

  def validate_no_negatives!(numbers)
    negatives = numbers.select { |n| n < 0 }.uniq
    raise NegativeNumberError.new(negatives) unless negatives.empty?
  end
end
