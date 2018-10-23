require 'pry'

class Deck

  attr_accessor :cards, :ranks, :suits

  def initialize
    @cards = []
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    create_cards(suits, ranks)
  end

  def create_cards(array1, array2)
    array1.each do |rank|
        array2.each do |suit|
          new_card = Card.new(suit, rank)
          @cards << new_card
      end
    end
  end

  def choose_card
    @cards.delete_at(rand(@cards.length))
  end

end #Deck class

class Card
  @@all = []

  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end

  def self.all
    @@all
  end

end #Card class




puts "hi"
