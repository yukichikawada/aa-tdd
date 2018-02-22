require "rspec"
require "deck"

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "create deck" do
      expect(deck.cards.count).to eq(52)
    end
    #
    # let(:uniq_cards) { deck.cards.uniq }
    #
    # it "doesn't create duplicate cards" do
    #   expect(deck.cards).to eq(uniq_cards)
    # end
  end

  describe "#shuffle!" do

    let(:unshuffled_deck) { Deck.new }
    it "shuffles deck" do
      deck.shuffle!
      expect(deck.cards).to_not eq(unshuffled_deck.cards)
    end

  end


end
