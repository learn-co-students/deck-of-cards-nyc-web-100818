

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end


class Deck
attr_accessor :cards

  VALUES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  # SUITS = { "♠" => "spades", "♦", "♣", "♥" => "hearts" }
  SUITS = ["hearts", "diamonds", "clubs", "spades"]

  def self.all_cards
    deck = []
    VALUES.each do |val|
      SUITS.each do |suit|
        deck << Card.new(suit, val)
      end
    end
    deck
  end

  def initialize(deck = Deck.all_cards)
    @cards = deck
  end

  def choose_card
    @cards.shuffle!.pop
  end

  def reveal_deck
    @cards
  end


end

game = Deck.new
print game.choose_card
puts ''
print game.reveal_deck.count
puts ''
