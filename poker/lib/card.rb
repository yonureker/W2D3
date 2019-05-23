class Card
  SUITS = %w[hearts spades diamonds clubs]
  VALUES = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
  attr_reader :suit,:val
  def initialize(suit,val)
    @suit = suit
    @val = val
  end
end