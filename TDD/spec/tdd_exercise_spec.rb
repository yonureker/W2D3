require 'rspec'
require 'tdd_exercise'

describe Array do
  describe "#my_uniq" do
    subject(:my_array) { Array.new([1,2,1,3,3]) }
    it "returns the unique elements in the order in which they first appeared" do
      expect(my_array.my_uniq).to eq(my_array.uniq)
    end
  end

  describe "#two_sum" do
    subject(:my_array) {Array.new([-1,0,2,-2,1])}
    it "finds all pairs of positions where the elements at those positions sum to zero" do
      expect(my_array.two_sum).to eq([[0,4],[2,3]])
    end

    it "raises an error when any element in the array is not an integer" do
      my_array.push("a")
      expect{my_array.two_sum}.to raise_error("Enter an array of integers")
    end

    it "sorts smaller index before bigger index" do
      expect(my_array.two_sum).to eq(my_array.two_sum.sort)
    end
  end

  describe "#my_transpose" do
    subject(:my_matrix) {Array.new([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]])}
    it "converts between the row-oriented and column-oriented representations" do
      expect(my_matrix.my_transpose).to eq(my_matrix.transpose)
    end
  end

  describe "#stock_picker" do
    subject(:stock_prices) {Array.new([60,2,40,5,7,15,48])}
    it "outputs the most profitable pair of days on which to first buy the stock and then sell the stock" do
      expect(stock_prices.stock_picker).to eq([1,6])
    end
  end
  
end