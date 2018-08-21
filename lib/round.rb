require 'pry'
require './lib/card'
require './lib/guess'
require './lib/deck'


class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = 0
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
