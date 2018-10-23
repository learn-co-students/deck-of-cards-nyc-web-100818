require 'pry'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    self.fill_deck  #self is the instance here.
  end


  #call sample from deck of cards + delete!

  def self.all
    @@all
  end

  def fill_deck  #becomes a helper method
    #saves 52 deck of cards
    #create instance of deck and shovel in cards; each time someone gets a deck, it's an INSTANCE
    self.cards = Card.create_deck_of_cards
  end

  def choose_card
    curr_card = self.cards.sample
    curr_card
      self.cards.delete(curr_card)
  end

end

###################################################

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

  #create 52 uniq instances of cards
  def self.create_deck_of_cards
    result = []

  rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    #result = array of hashes
    suit.each do |s|
      rank.each do |r|
       result << Card.new(s,r)
      end
    end
    result
  end


end
# binding.pry


# puts" "