class Card

  attr_accessor :face, :suit, :value

  def initialize(face, suit)
    self.face = face.to_s
    self.suit = suit
    self.value = face
  end

  def value=(face)
    if face == "Jack"
      @value = 11
    elsif face == "Queen"
      @value = 12
    elsif face == "King"
      @value = 13
    elsif face == "Ace"
      @value = 14
    else
      @value = face.to_i
    end
  end

  def >(card)
    self.value > card.value
  end

end
