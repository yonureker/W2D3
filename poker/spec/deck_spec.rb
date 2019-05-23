require 'rspec'
require 'deck'

RSpec.describe Deck do
  subject(:deck1) {Deck.new}
  describe "#initialize" do
    it "creates a deck with 52 cards" do
      expect(deck1.pile.length).to eq(52)
    end
    

    it "should have 4 suits" do
      my_hash = Hash.new(0)

      deck1.pile.each do |card|
        my_hash[card] += 1
      end
      expect(my_hash.keys.length).to eq(4)
    end
    
   
      

    
    it "should have 13 cards from each suit" do
      my_hash = Hash.new(0)

      deck1.pile.each do |card|
        my_hash[card] += 1
      end
      count = 0
      my_hash.each_value do |k, v|
        count+=1
      end
      expect(count).to eq(13)


    end
  end
end