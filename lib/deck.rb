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
    swap = true
      while swap
        swap = false
        (cards.count - 1).times do |x|
          if @cards[x].rank_index > @cards[x + 1].rank_index
          @cards[x], @cards[x + 1] = @cards[x + 1], @cards[x]
          swap = true
          end
        end
      end
    @cards
  end

end
