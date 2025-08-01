class StringCalculator
  def add(string)
    return 0 if string.empty?

    string = string.gsub('\n', ',')
    string = string.gsub(/[^0-9\-]+/, ',')
    numbers = string.split(',')
    return numbers.first.to_i if numbers.size == 1

    numbers = numbers.map(&:to_i)
    negatives = numbers.select { |n| n < 0 }.uniq

    raise NegativeNumberError.new(negatives) unless negatives.empty?
    numbers.sum
  end
end
