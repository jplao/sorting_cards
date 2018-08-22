require 'pry'

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def rank_value
    value = {"2" => 20,
            "3" => 30,
            "4" => 40,
            "5" => 50,
            "6" => 60,
            "7" => 70,
            "8" => 80,
            "9" => 90,
            "10" => 100,
            "Jack" => 110,
            "Queen" => 120,
            "King" => 130,
            "Ace" => 140}
  end

  def rank_suit
    suits = {"Clubs" => 1,
            "Diamonds" => 2,
            "Hearts" => 3,
            "Spades" => 4}
  end

  def rank_index
    rank_index = rank_value[@value] + rank_suit[@suit]
  end

end
