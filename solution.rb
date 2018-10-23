class Deck
  attr_accessor :cards, :phrase
  attr_reader :ranks, :suits

  def initialize
    @cards = []
    @phrases = []
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @rank_spelled_out = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

    create_card(suits, ranks)

  end # end of initialize

  def create_card(array1, array2)
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    @cards.shuffle # so it's random
    @cards.pop
  end


end # end of Deck class

class Card
    attr_accessor :rank, :suit

    @@all = []

    def initialize(suit, rank) # card instance is made up of a rank and a suit
      @rank = rank
      @suit = suit
      @@all << self
    end

    def self.all
      @@all
    end


end # end of Card class
