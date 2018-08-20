require 'pry'
require './lib/card'

class Deck
attr_reader :cards

  def initialize(card)
    @card = card
  end

  def cards
    cards = []
    cards << @card
  end

  def count
    cards.count
  end

binding.pry
end
