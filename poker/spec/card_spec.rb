require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card) { Card.new("8", :spade) }

  describe "#initialize" do
    it "assigns value" do
      expect(card.value).to eq("8")
    end

    it "assigns suit" do
      expect(card.suit).to eq(:spade)
    end
  end
end
