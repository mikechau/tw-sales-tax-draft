require_relative "../lib/print"

describe "print" do
  it "should display the items line by line" do
    items = [ { name: "imported bottle of chocolates", qty: 1, price: 10.00, good: false, import: true, total: 10.50 },
              { name: "imported bottle of perfume", qty: 1, price: 47.50, good: true, import: true, total: 54.65 }
            ]
    total_sales_tax = 7.65
    total_price = 65.15
    receipt = Print.new(items, total_sales_tax, total_price)
    receipt.show
  end
end