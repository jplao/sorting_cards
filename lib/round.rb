require 'pry'
require './lib/deck'
require './lib/card'
require './lib/guess'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end


  def current_card
    @deck.cards.first
  end

  def record_guess(guess)
    response = guess[:value] + " of " + guess[:suit]
    guess = Guess.new(response, current_card)
    @guesses << guess
  end

binding.pry
end
