require 'pry'
require './lib/card'

class Deck
attr_accessor :cards

  def initialize (card)
    @card = card
  end

  def cards
    p @card
  end

  def count
    cards.count
  end

binding.pry
end
exit
