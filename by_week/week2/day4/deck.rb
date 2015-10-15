require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    self.cards = []
    suits = %w(Clubs Spades Diamonds Hearts)
    possible_faces = (2..10).to_a + %w(Jack Queen King Ace)
    suits.each do |suit|
      possible_faces.each do |face|
        self.cards << Card.new(face, suit)
      end
    end
    shuffle
  end

  def shuffle
    self.cards = self.cards.shuffle
    self
  end

end
