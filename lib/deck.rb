require 'pry'
require './lib/card'

class Deck
attr_reader :cards, :count

  def initialize(cards)
    @cards = cards
    @count = 0
  end

  def count
    @count = cards.count
  end

end
