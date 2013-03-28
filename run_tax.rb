require './lib/input'
require './lib/calculator'
require './lib/print'

class RunTax

  def initialize(filename)
    @filename = filename
  end

  def input
    file = Input.new(@filename)
    file.parse
    return file
  end

  def calc
    costs = Calculator.new(input.items)
    costs.total_all
    return costs
  end

  def print
    Print.review(input.input_file, @filename)
    receipt = Print.new(calc.items, calc.total_sales_tax, calc.total_price)
    receipt.show
  end

  def execute
    input
    calc
    print
  end
end


filename = ARGV.first
purchase = RunTax.new(filename)
purchase.execute
# load = Input.new(filename)
# load.parse

# costs = Calculator.new(load.items)
# costs.total_all

# receipt = Print.new(costs.items, costs.total_sales_tax, costs.total_price)

# Print.review(load.input_file, filename)
# receipt.show

