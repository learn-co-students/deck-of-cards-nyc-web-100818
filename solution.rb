require 'pry'

class Card

  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

end

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    self.create_deck
  end

  def create_deck
    ranks = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
    suits = ["Hearts", "Clubs", "Spades", "Diamonds"]
    ranks.each do |rank|
      suits.each do |suit|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    delete_store = []
    random_card = @cards.sample
    @cards.each_with_index do |card, i|
      if random_card == card
        delete_store << card
        @cards.delete_at(i)
      end
    end
    delete_store[0]
  end

end
