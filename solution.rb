class Deck

  def cards
    @cards
  end

  def initialize
    @cards = []
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    suits.each do |suit|
      ranks.each do |rank|
        card = Card.new(rank, suit)
        @cards << card
      end
    end
  end

  def choose_card
    card = cards.shuffle.first
    cards.delete(card)
    card
  end
end

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
