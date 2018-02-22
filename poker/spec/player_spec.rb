require "rspec"
require "player"

RSpec.describe Player do
  subject(:player) { Player.new("Card Shark") }

  describe "#initialize" do
    it "has a name" do
      expect(player.name).to eq("Card Shark")
    end

    it
  end
end
