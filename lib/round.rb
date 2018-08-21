require 'pry'
require './lib/card'
require './lib/guess'
require './lib/deck'


class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @deck_index = 0
    @correct_guesses = 0

  end


  def current_card
    @deck.cards[@deck_index]
  end

  def record_guess(guess)
    response = guess[:value] + " of " + guess[:suit]
    guess = Guess.new(response, current_card)
    @deck_index += 1
    @guesses << guess
  end

  def number_correct
    if @guesses.first.feedback == "Correct!"
      @correct_guesses += 1
    end
  end

binding.pry
end
