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
    if guess_card[0] == @card.value && guess_card[-1] == @card.suit
      true
    else
      false
    end
  end

  def feedback
    if correct? == true 
      "Correct!"
    else
      "Incorrect."
    end
  end

end
