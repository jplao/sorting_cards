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
    @guess_index = 0
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
    correct_guesses = 0
    @guesses.find_all do |guess|
      guess_card = guess.response.split(' ')
      if guess_card[0] == guess.card.value && guess_card[-1] == guess.card.suit
        correct_guesses += 1
      end
    end
    correct_guesses
  end

  def percent_correct
    percent = (number_correct.to_f / @guesses.count) * 100
    percent.to_i
  end

binding.pry
end
