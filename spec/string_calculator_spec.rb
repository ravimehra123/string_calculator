require_relative '../string_calculator'
require_relative '../negative_number_error'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns a single number if only one is provided' do
      expect(calculator.add('7')).to eq(7)
    end

    it 'adds two numbers' do
      expect(calculator.add('3,4')).to eq(7)
    end

    it 'adds multiple numbers' do
      expect(calculator.add('2,3,4')).to eq(9)
    end

    it 'handles newline characters as separators' do
      expect(calculator.add('1\\n2,3')).to eq(6)
    end

    it 'handles random separators and whitespace' do
      expect(calculator.add(" 3\n, 4 &%$#@!,6")).to eq(13)
    end

    it 'raises error with negative numbers' do
      expect { calculator.add('1,-3,5,-8') }.to raise_error(NegativeNumberError, 'Negative numbers are not allowed: -3, -8')
    end
  end
end
