require_relative 'deck'

class Player

  attr_accessor :deck, :name, :winnings

  def initialize(name="Player One")
    self.name = name
    self.deck = Deck.new.shuffle
    self.winnings = []
  end

  def draw
    deck.cards.shift
  end

  def total_cards
    deck.cards + winnings
  end

end
