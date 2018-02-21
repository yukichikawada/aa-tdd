require 'rspec'
require 'tdd'

RSpec.describe TDD do
  subject(:tdd) { TDD.new }

  describe '#my_uniq' do

    it 'returns an empty array when array is empty' do
      expect(tdd.my_uniq([])).to eq([])
    end

    it 'works in the simple case' do
      expect(tdd.my_uniq([1, 1])).to eq([1])
    end

    it 'works in the complex case' do
      expect(tdd.my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end

    it "returns the same array when all elements are unique" do
      expect(tdd.my_uniq([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
    end
  end

  describe "#two_sum" do

    context "when there aren't any indices who's element sum to zero"
      it "returns an empty array" do
        expect(tdd.two_sum([])).to eq([])
      end

      it "returns an empty array with zero elements summing to zero" do
        expect(tdd.two_sum([1, 2, 3, 4, 5])).to eq([])
      end

    context "when there are indices who's elements sum to zero"
      it "returns an array with indices in ascending order" do
        expect(tdd.two_sum([-2, -1, 1, 2])).to eq([[0, 3], [1, 2]])
      end

      it "does not return indicies in descending order" do
        expect(tdd.two_sum([-2, -1, 1, 2])).to_not eq([[1, 2], [0, 3]])
      end
  end

  describe "#my_transpose" do
    it "transposes a matrix" do
      expect(tdd.my_transpose([
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ])).to eq([
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ])
    end
  end

  describe "#stock_picker" do
    context "descending stock prices" do
      it "does not return buy date after the sell date" do
        expect(tdd.stock_picker([100, 2, 5, 0])).to_not eq([3, 0])
      end

      it "returns an empty array if all prices are descending" do
        expect(tdd.stock_picker([100, 90, 80, 70])).to eq([])
      end

    end

    context "ascending stock prices" do
      it "returns the optimal pair of days" do
        expect(tdd.stock_picker([100, 2, 5, 0])).to eq([1, 2])
      end

    end
  end
end
