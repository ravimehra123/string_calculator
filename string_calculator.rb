class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = string.split(',')
    numbers.first.to_i if numbers.size == 1
  end
end
