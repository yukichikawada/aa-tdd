require_relative "card"

class Deck
  VALUES = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
  SUITS = [:club, :spades, :hearts, :diamonds]

  attr_reader :cards

  def initialize
    @cards = []
    populate_deck
  end

  def shuffle!
    @cards.shuffle!
  end

  private

  def populate_deck
    VALUES.each do |val|
      SUITS.each do |suit|
        @cards << Card.new(val, suit)
      end
    end
  end

end
