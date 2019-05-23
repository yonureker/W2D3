require_relative 'card.rb'

class Deck
  attr_reader :pile
  def initialize
    @pile = []
    
    until @pile.size == 52
      Card::SUITS.each do |suit|
        Card::VALUES.each do |value|
          @pile << Card.new(suit, value)
        end
      end
    end

    @pile.shuffle
  end

  def update_pile(num)
    @pile.drop(num)
  end


end

deck1 = Deck.new
my_array = []

deck1.pile.each do |card|
  my_array << card.suit
end

p my_array