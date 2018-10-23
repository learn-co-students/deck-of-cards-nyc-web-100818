class Deck
  # attr_accessor :cards
  def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    suits.each do |suit|
      ranks.each do |rank|
        Card.new(rank, suit, self)
      end
    end
  end

  def cards
    Card.all.select do |card|
      card.deck == self
    end
  end

  def choose_card
  card = cards.shuffle.first
  card.remove
  card
  end

end

class Card

  attr_reader :rank, :suit, :deck
  @@all = []

  def initialize(rank, suit, deck)
    @rank = rank
    @suit = suit
    @deck = deck
    @@all << self
  end

  def self.all
    @@all
  end

  def remove
  @@all.delete(self)
  end

end


# d1 = Deck.new
# deck_array = []
# 52.times do
# card = d1.choose_card
# card.remove
# deck_array << card.rank + " of " + card.suit
# end
# puts deck_array

# Card.all
