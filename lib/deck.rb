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

  def sort
    return @cards if @cards.size <= 1
    swap = true
      while swap
        swap = false
        (cards.count - 1).times do |x|
          if @cards[x].value > @cards[x + 1].value
          @cards[x], @cards[x + 1] = @cards[x + 1], @cards[x]
          swap = true
          end
        end
      end
    @cards
  end




binding.pry
end
