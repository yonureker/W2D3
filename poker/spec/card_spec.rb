require 'rspec'
require 'card'

describe Card do
  describe "#initialize" do
    subject(:card1) {Card.new("hearts","A")}
    let(:card2) {double("card2")}
    it "creates a card with specified suit and value" do
      expect(card1.suit).to eq("hearts")
      expect(card1.val).to eq("A")
    end
  end

end