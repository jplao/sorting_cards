require 'pry'
require './lib/deck'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def guesses
    @guesses
  end 


binding.pry
end
