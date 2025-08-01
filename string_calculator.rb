class StringCalculator
  def add(string)
    return 0 if string.empty?

    string = string.gsub('\n', ',')
    numbers = string.split(',')
    return numbers.first.to_i if numbers.size == 1

    numbers = numbers.map(&:to_i)
    numbers.sum
  end
end
