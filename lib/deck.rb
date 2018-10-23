require_relative 'card'
require 'pry'

class Deck

  attr_accessor :deck

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
      @deck = deck
    end

    def choose_card
      @deck.shuffle!.pop
    end

    def cards
      @deck
    end


end

game = Deck.new
print game.choose_card
puts ''
print game.reveal_deck.count
puts ''
