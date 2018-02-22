require 'rspec'
require 'towers_of_hanoi'

RSpec.describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }

  describe "#initialize" do
    it "three piles" do
      expect(game.piles.length).to eq(3)
    end

    it "puts the discs in the first pile in ascending order" do
      expect(game.piles[0]).to eq([1, 2, 3])
    end
  end

  describe "#move" do
    it "can only pick from a pile with a disc in it" do
      expect { game.move(1, 2) }.to raise_error(ArgumentError)
    end

    it "places a disc on an empty pile" do
      game.move(0, 1)
      expect(game.piles).to eq([[2, 3], [1], []])
    end

    it "can place a smaller disc on a larger disc" do
      game.move(0, 1)
      game.move(0, 2)
      game.move(1, 2)
      expect(game.piles).to eq([[3], [], [1, 2]])
    end

    it "cannot place a larger disc on a smaller disc" do
      game.move(0, 1)
      expect { game.move(0, 1) }.to raise_error(ArgumentError)
    end

    it "cannot start and end in the same position" do
      expect { game.move(0, 0) }.to raise_error(ArgumentError)
    end
  end

  describe "#won?" do

    let(:game1) { TowersOfHanoi.new([[], [1, 2, 3], []]) }
    it "checks if piles 0 and 2 are empty" do
      # game.move(0, 1)
      # game.move(0, 2)
      # game.move(1, 2)
      # game.move(0, 1)
      # game.move(2, 0)
      # game.move(2, 1)
      # game.move(0, 1)
      expect(game1).to be_won
    end

    let(:game2) { TowersOfHanoi.new([[], [], [1, 2, 3]]) }
    it "checks if piles 0 and 1 are empty" do
      # game.move(0, 2)
      # game.move(0, 1)
      # game.move(2, 1)
      # game.move(0, 2)
      # game.move(1, 0)
      # game.move(1, 2)
      # game.move(0, 2)
      expect(game2).to be_won
    end
  end
end
