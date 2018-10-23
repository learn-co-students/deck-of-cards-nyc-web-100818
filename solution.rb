require 'pry'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    self.fill_deck
  end

  def self.all
    @@all
  end

  def fill_deck
    self.cards = Card.create_deck_of_cards
  end

  def choose_card
    curr_card = self.cards.sample
    curr_card
    self.cards.delete(curr_card)
  end
end


class Card

  attr_accessor :rank, :suit

  @@all = []

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_deck_of_cards
    result = []
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    suit.each do |s|
      rank.each do |r|
       result << Card.new(s,r)
      end
    end
    result
  end

end
