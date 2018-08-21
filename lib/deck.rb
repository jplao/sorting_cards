require 'pry'
require './lib/card'

class Deck
attr_reader :cards, :count

  def initialize(cards)
    @cards = cards
    @count = cards.count
  end

binding.pry
end
