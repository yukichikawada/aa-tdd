require 'rspec'
require 'hand'

RSpec.describe Hand do
  let(:card1) { double("card1", :value => "A", :suit => :club) }
  subject(:hand) { Hand.new }
  let(:nothing) { Hand.new }

  describe "#initialize" do
  end
end
