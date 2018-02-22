class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value, @suit = value, suit
  end

  def ==(other_card)
    other_card.value == value && other_card.suit == suit 
  end
end
