require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# calculator = Calculator.new
# puts "Testing add with 4 and 2"
# x = calculator.add(4, 2)
# if x == 6
#   puts "test pass"
# else
#   puts "test failed"
# end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(4, 2)
      expect(result).to eq(6)
    end
  end

  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(4, 1)
      expect(result).to eq(3)
    end

    it "should return a negative number if the second is larger" do
      calculator = Calculator.new
      result = calculator.subtract(4, 10)
      expect(result).to eq(-6)
    end
  end

  describe "#square" do
    it "should return the number times itself" do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end
end
