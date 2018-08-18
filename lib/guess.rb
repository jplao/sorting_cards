require 'pry'
require './lib/card'

class Guess
  attr_reader :response, :card

  def initialize (response, card)
    @response = response
    @card = card
  end

  def correct?
    guess_card = @response.split(' ')
    guess_value = guess_card[0]
    guess_suit = guess_card[-1]
    if guess_value == @card.value && guess_suit == @card.suit
      true
    else
      false
    end
  end

  def feedback
    guess_card = @response.split(' ')
    if guess_card[0] == @card.value && guess_card[-1] == @card.suit
      "Correct!"
    else
      false
    end
  end

binding.pry

end
