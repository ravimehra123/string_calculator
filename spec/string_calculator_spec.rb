require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns a single number if only one is provided' do
      expect(calculator.add('7')).to eq(7)
    end

    it 'sums two numbers' do
      expect(calculator.add('3,4')).to eq(7)
    end

    it 'sums multiple numbers' do
      expect(calculator.add('2,3,4')).to eq(9)
    end
  end
end
